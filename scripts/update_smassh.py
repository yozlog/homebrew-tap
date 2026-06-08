#!/usr/bin/env python3
import urllib.request
import json
import re
import hashlib
import os

def get_latest_release():
    url = "https://api.github.com/repos/kraanzu/smassh/releases/latest"
    req = urllib.request.Request(url, headers={"User-Agent": "Homebrew-Tap-Updater"})
    with urllib.request.urlopen(req) as response:
        data = json.loads(response.read().decode())
        tag = data["tag_name"]  # e.g. "v3.2.1"
        version = tag.lstrip("v")
        return tag, version

def calculate_sha256(url):
    req = urllib.request.Request(url, headers={"User-Agent": "Homebrew-Tap-Updater"})
    with urllib.request.urlopen(req) as response:
        content = response.read()
        return hashlib.sha256(content).hexdigest()

def set_github_env(name, value):
    if "GITHUB_ENV" in os.environ:
        with open(os.environ["GITHUB_ENV"], "a") as f:
            f.write(f"{name}={value}\n")

def main():
    formula_path = "Formula/smassh.rb"
    
    with open(formula_path, "r") as f:
        content = f.read()
        
    version_match = re.search(r'version "([^"]+)"', content)
    if not version_match:
        print("Could not parse current version from formula")
        set_github_env("UPDATE_NEEDED", "false")
        return
    current_version = version_match.group(1)
    
    latest_tag, latest_version = get_latest_release()
    print(f"Current version: {current_version}")
    print(f"Latest version:  {latest_version}")
    
    if current_version == latest_version:
        print("Formula is already up to date.")
        set_github_env("UPDATE_NEEDED", "false")
        return
        
    new_url = f"https://github.com/kraanzu/smassh/releases/download/{latest_tag}/macos-smassh"
    print(f"Downloading and calculating SHA256 for {new_url}...")
    new_sha256 = calculate_sha256(new_url)
    print(f"New SHA256: {new_sha256}")
    
    # Replace url, version, sha256
    content = re.sub(
        r'url "https://github.com/kraanzu/smassh/releases/download/[^"]+/macos-smassh"',
        f'url "{new_url}"',
        content
    )
    content = re.sub(
        r'version "[^"]+"',
        f'version "{latest_version}"',
        content
    )
    content = re.sub(
        r'sha256 "[^"]+"',
        f'sha256 "{new_sha256}"',
        content
    )
    
    with open(formula_path, "w") as f:
        f.write(content)
        
    print(f"Updated Formula/smassh.rb to version {latest_version}")
    set_github_env("LATEST_VERSION", latest_version)
    set_github_env("UPDATE_NEEDED", "true")

if __name__ == "__main__":
    main()
