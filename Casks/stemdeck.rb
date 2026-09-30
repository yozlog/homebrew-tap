cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "1ea778c01cfd6d7e1bce1443c256f30b77baf01d8aff99cdbad35fd2ae9b597f",
         intel: "d0e114d42aa9d3bd4693de7ebaae93c8c02134aa89d8a19a0b0c05c086af349a"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
