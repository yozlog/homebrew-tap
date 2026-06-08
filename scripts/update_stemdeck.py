#!/usr/bin/env python3
import urllib.request
import json
import re
import hashlib
import os

def get_latest_release():
    url = "https://api.github.com/repos/stemdeckapp/stemdeck/releases/latest"
    req = urllib.request.Request(url, headers={"User-Agent": "Homebrew-Tap-Updater"})
    with urllib.request.urlopen(req) as response:
        data = json.loads(response.read().decode())
        tag = data["tag_name"]  # e.g. "v0.7.0-alpha.12"
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
    cask_path = "Casks/stemdeck.rb"
    
    with open(cask_path, "r") as f:
        content = f.read()
        
    version_match = re.search(r'version "([^"]+)"', content)
    if not version_match:
        print("Could not parse current version from cask")
        set_github_env("UPDATE_NEEDED", "false")
        return
    current_version = version_match.group(1)
    
    latest_tag, latest_version = get_latest_release()
    print(f"Current version: {current_version}")
    print(f"Latest version:  {latest_version}")
    
    if current_version == latest_version:
        print("Cask is already up to date.")
        set_github_env("UPDATE_NEEDED", "false")
        return
        
    arm_url = f"https://github.com/stemdeckapp/stemdeck/releases/download/{latest_tag}/StemDeck-macOS-arm64.dmg"
    intel_url = f"https://github.com/stemdeckapp/stemdeck/releases/download/{latest_tag}/StemDeck-macOS-x64.dmg"
    
    print(f"Downloading and calculating SHA256 for ARM: {arm_url}...")
    new_arm_sha = calculate_sha256(arm_url)
    
    print(f"Downloading and calculating SHA256 for Intel: {intel_url}...")
    new_intel_sha = calculate_sha256(intel_url)
    
    print(f"New ARM SHA256: {new_arm_sha}")
    print(f"New Intel SHA256: {new_intel_sha}")
    
    # Replace version
    content = re.sub(
        r'version "[^"]+"',
        f'version "{latest_version}"',
        content
    )
    # Replace arm sha256
    content = re.sub(
        r'sha256 arm:\s+"[a-f0-9]+",',
        f'sha256 arm:   "{new_arm_sha}",',
        content
    )
    # Replace intel sha256
    content = re.sub(
        r'intel:\s+"[a-f0-9]+"',
        f'intel: "{new_intel_sha}"',
        content
    )
    
    with open(cask_path, "w") as f:
        f.write(content)
        
    print(f"Updated Casks/stemdeck.rb to version {latest_version}")
    set_github_env("LATEST_VERSION", latest_version)
    set_github_env("UPDATE_NEEDED", "true")

if __name__ == "__main__":
    main()
