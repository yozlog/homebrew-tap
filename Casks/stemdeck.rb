cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.3"
  sha256 arm:   "6ff00e96f74b9de7ea274a163bc2e9a8d8342d278602ff4577850d28a3b25cd8",
         intel: "e3b163cc449dce14a56a9bbd70e21dceae3f5d1562f6c4c4e50d447b966cd388"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
