cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "90cce3721ccb3687d75e3f632cac0eb70f44e5ff83b23ce0611f67e783994e11",
         intel: "41a74aae91f0600c8188d00340ece4a72b4ff92ee6285f26f18e051457c61b2a"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
