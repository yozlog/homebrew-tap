cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.12.2"
  sha256 arm:   "20310b8bf50c1fddaac7b3419e7b62061631bf7d4d8322bbd31967c3e6d86929",
         intel: "bd27ee462ea952e2cbfc6a807557be20c79d0c4baadc72680eedbdc2c36b9453"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
