cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.16.1"
  sha256 arm:   "1b41d2bd3a89a8af8ad33a9361fedb91a9b7c9f168e5bed95f2015ebe4ef4d4b",
         intel: "516cb6239d974df2809e41cee3fa162dc2c2bd09633695821b5ff6691d7d51b4"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
