#!/usr/bin/env python3
import hashlib
import json
import os
import re
import urllib.request


RELEASES_URL = "https://api.github.com/repos/darktable-org/darktable/releases"
ARCHITECTURES = {
    "arm": "arm64",
    "intel": "x86_64",
}
VERSION_BLOCKS = {
    "arm": "on_sequoia :or_newer",
    "intel": "on_intel",
}


def github_request(url):
    return urllib.request.Request(
        url,
        headers={
            "Accept": "application/vnd.github+json",
            "User-Agent": "Homebrew-Tap-Updater",
            "X-GitHub-Api-Version": "2022-11-28",
        },
    )


def get_latest_assets():
    with urllib.request.urlopen(github_request(RELEASES_URL)) as response:
        releases = json.loads(response.read().decode())

    assets = {}
    for release in releases:
        if release["draft"] or release["prerelease"]:
            continue

        tag_match = re.fullmatch(r"release-(\d+(?:\.\d+)+)", release["tag_name"])
        if not tag_match:
            continue
        version = tag_match.group(1)

        assets_by_name = {asset["name"]: asset for asset in release["assets"]}
        for architecture, asset_arch in ARCHITECTURES.items():
            if architecture in assets:
                continue
            asset_name = f"darktable-{version}-{asset_arch}.dmg"
            if asset_name in assets_by_name:
                assets[architecture] = (version, assets_by_name[asset_name])

        if len(assets) == len(ARCHITECTURES):
            return assets

    missing = sorted(set(ARCHITECTURES) - set(assets))
    raise RuntimeError(f"No stable DMG release found for: {', '.join(missing)}")


def calculate_sha256(asset):
    digest = asset.get("digest")
    if digest and digest.startswith("sha256:"):
        return digest.removeprefix("sha256:")

    sha256 = hashlib.sha256()
    with urllib.request.urlopen(github_request(asset["browser_download_url"])) as response:
        while chunk := response.read(1024 * 1024):
            sha256.update(chunk)
    return sha256.hexdigest()


def set_github_env(name, value):
    if "GITHUB_ENV" in os.environ:
        with open(os.environ["GITHUB_ENV"], "a") as env_file:
            env_file.write(f"{name}={value}\n")


def get_arch_version(content, architecture):
    block = re.escape(VERSION_BLOCKS[architecture])
    match = re.search(
        rf'{block} do\s+version "([^"]+)"',
        content,
    )
    if not match:
        raise RuntimeError(f"Could not parse {architecture} version")
    return match.group(1)


def replace_arch_data(content, architecture, version, checksum):
    block = re.escape(VERSION_BLOCKS[architecture])
    pattern = (
        rf'({block} do\s+version ")[^"]+'
        rf'("\s+sha256 ")[a-f0-9]+(")'
    )
    updated, count = re.subn(
        pattern,
        lambda match: (
            f'{match.group(1)}{version}'
            f'{match.group(2)}{checksum}{match.group(3)}'
        ),
        content,
    )
    if count != 1:
        raise RuntimeError(f"Could not update {architecture} version and checksum")
    return updated


def main():
    cask_path = "Casks/darktable.rb"
    with open(cask_path) as cask_file:
        content = cask_file.read()

    assets = get_latest_assets()
    versions = {architecture: details[0] for architecture, details in assets.items()}
    current_versions = {
        architecture: get_arch_version(content, architecture)
        for architecture in ARCHITECTURES
    }

    print(f"Current versions: {current_versions}")
    print(f"Latest versions:  {versions}")
    if current_versions == versions:
        print("Cask is already up to date.")
        set_github_env("UPDATE_NEEDED", "false")
        return

    checksums = {
        architecture: calculate_sha256(asset)
        for architecture, (_, asset) in assets.items()
    }
    for architecture in ARCHITECTURES:
        content = replace_arch_data(
            content,
            architecture,
            versions[architecture],
            checksums[architecture],
        )

    with open(cask_path, "w") as cask_file:
        cask_file.write(content)

    version_summary = f'arm-{versions["arm"]}_intel-{versions["intel"]}'
    print(f"Updated {cask_path} to {version_summary}")
    set_github_env("LATEST_VERSION", version_summary)
    set_github_env("UPDATE_NEEDED", "true")


if __name__ == "__main__":
    main()
