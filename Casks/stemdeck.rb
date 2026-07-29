cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.14"
  sha256 arm:   "572525d77f9ed9b7399efb0753ff6c0e8b39ee7ab93dc019c6602f05ca9f3797",
         intel: "f6e465e51a6dad97a21e66a8121fd8a29c53ae7a4d165898f6ba44a16276729e"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
