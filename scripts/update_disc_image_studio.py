#!/usr/bin/env python3
import hashlib
import json
import os
import re
import urllib.request


RELEASE_URL = "https://api.github.com/repos/JiaFeiMiao-K-Cat/DiscImageStudio/releases/latest"
ARCHITECTURES = {
    "arm": "arm64",
    "intel": "x64",
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


def get_latest_release():
    with urllib.request.urlopen(github_request(RELEASE_URL)) as response:
        release = json.loads(response.read().decode())

    tag = release["tag_name"]
    version_match = re.fullmatch(r"v?(\d+(?:\.\d+)+)", tag)
    if not version_match:
        raise RuntimeError(f"Unexpected release tag: {tag}")

    version = version_match.group(1)
    assets_by_name = {asset["name"]: asset for asset in release["assets"]}
    assets = {}
    for architecture, asset_arch in ARCHITECTURES.items():
        asset_name = f"DiscImageStudio-CLI-v{version}-osx-{asset_arch}.tar.gz"
        if asset_name not in assets_by_name:
            raise RuntimeError(f"Release {tag} is missing {asset_name}")
        assets[architecture] = assets_by_name[asset_name]
    return version, assets


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


def main():
    cask_path = "Casks/disc-image-studio.rb"
    with open(cask_path) as cask_file:
        content = cask_file.read()

    version_match = re.search(r'version "([^"]+)"', content)
    if not version_match:
        raise RuntimeError("Could not parse current version")
    current_version = version_match.group(1)

    latest_version, assets = get_latest_release()
    print(f"Current version: {current_version}")
    print(f"Latest version:  {latest_version}")
    if current_version == latest_version:
        print("Cask is already up to date.")
        set_github_env("UPDATE_NEEDED", "false")
        return

    checksums = {
        architecture: calculate_sha256(asset)
        for architecture, asset in assets.items()
    }
    content = re.sub(
        r'version "[^"]+"',
        f'version "{latest_version}"',
        content,
        count=1,
    )
    content, count = re.subn(
        r'sha256 arm:\s+"[a-f0-9]+",\s*intel:\s+"[a-f0-9]+"',
        f'sha256 arm:   "{checksums["arm"]}",\n'
        f'         intel: "{checksums["intel"]}"',
        content,
    )
    if count != 1:
        raise RuntimeError("Could not update sha256 stanza")

    with open(cask_path, "w") as cask_file:
        cask_file.write(content)

    print(f"Updated {cask_path} to version {latest_version}")
    set_github_env("LATEST_VERSION", latest_version)
    set_github_env("UPDATE_NEEDED", "true")


if __name__ == "__main__":
    main()
