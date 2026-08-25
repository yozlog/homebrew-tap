cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.14.2"
  sha256 arm:   "64ef4f72834e1c00afabe3adf1586e01aa66594b7fafb9c32119edbee0a8ffa6",
         intel: "8a1ca150f7bbf44f456741726fd3ec909946e52a268f733d3f6b561ed42f522a"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
