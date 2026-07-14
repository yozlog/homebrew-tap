cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.7"
  sha256 arm:   "d935d7b3f4b1d86cfbbec761fd3486dbd7b9152c2957473451f0bb7ff4d647e3",
         intel: "023bb3bd29a4d49a0aa6a6c81ae44d22f45bb7f28c878ece4143858d647b7cc4"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
