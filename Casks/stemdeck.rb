cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.13"
  sha256 arm:   "d8d16d8148168d5fe3ac8df5cf52722a018e846ad0d692319ac92cfa12902260",
         intel: "822ae51c14956d47508a73ef378182132f97c48cf045023497c9534813912c55"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
