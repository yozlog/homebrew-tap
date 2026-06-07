#!/usr/bin/env python3
import urllib.request
import json
import re
import hashlib
import os

def get_latest_commit():
    url = "https://api.github.com/repos/Wevah/dragterm/commits/master"
    req = urllib.request.Request(url, headers={"User-Agent": "Homebrew-Tap-Updater"})
    with urllib.request.urlopen(req) as response:
        data = json.loads(response.read().decode())
        sha = data["sha"]
        date_str = data["commit"]["committer"]["date"]  # format: "2020-04-20T18:03:00Z"
        date = date_str.split("T")[0].replace("-", "")  # format: "20200420"
        return sha, date

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
    formula_path = "Formula/dragterm.rb"
    
    with open(formula_path, "r") as f:
        content = f.read()
        
    url_match = re.search(r'url "https://github.com/Wevah/dragterm/archive/([^"]+)\.tar\.gz"', content)
    if not url_match:
        print("Could not parse current URL from formula")
        set_github_env("UPDATE_NEEDED", "false")
        return
    current_sha = url_match.group(1)
    
    latest_sha, latest_date = get_latest_commit()
    print(f"Current commit: {current_sha}")
    print(f"Latest commit:  {latest_sha}")
    
    if current_sha == latest_sha:
        print("Formula is already up to date.")
        set_github_env("UPDATE_NEEDED", "false")
        return
        
    new_url = f"https://github.com/Wevah/dragterm/archive/{latest_sha}.tar.gz"
    print(f"Downloading and calculating SHA256 for {new_url}...")
    new_sha256 = calculate_sha256(new_url)
    print(f"New SHA256: {new_sha256}")
    
    new_version = f"1.0.2.{latest_date}"
    
    # Replace url, version, sha256
    content = re.sub(
        r'url "https://github.com/Wevah/dragterm/archive/[^"]+\.tar\.gz"',
        f'url "{new_url}"',
        content
    )
    content = re.sub(
        r'version "[^"]+"',
        f'version "{new_version}"',
        content
    )
    content = re.sub(
        r'sha256 "[^"]+"',
        f'sha256 "{new_sha256}"',
        content
    )
    
    with open(formula_path, "w") as f:
        f.write(content)
        
    print(f"Updated Formula/dragterm.rb to version {new_version}")
    set_github_env("LATEST_VERSION", new_version)
    set_github_env("UPDATE_NEEDED", "true")

if __name__ == "__main__":
    main()
