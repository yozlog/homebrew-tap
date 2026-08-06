cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.15"
  sha256 arm:   "41b61979b3df232520132f099739d1d1d3aa9429ee353933e5594b5af39e9962",
         intel: "4935799792d229672b27707038906e41470cd9c8e272db5186202f399a23bc75"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
