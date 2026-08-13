cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "70105186463ce9083867c49279dbe0adc1f2aeed9d585a554811dcb869ec9008",
         intel: "10f40430193c2dbc838f6b0339be1d2b34f3281f8c6c04c52632504a52a80258"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
