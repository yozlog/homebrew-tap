cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0-alpha.14"
  sha256 arm:   "bdc4dde85defed08c74c1fda17bba8d794a442e6948379fba973f62c9dcb986f",
         intel: "a588100352f0122f8f01adf4f150208f564c6a7b2427039c27fa7b3a52d96d50"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
