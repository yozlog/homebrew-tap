cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.8"
  sha256 arm:   "9bdf0fa8a134de27fce705722223e3beaababdab98fed8889b108346f5c5ae3e",
         intel: "9ed4d43e3404fad8df614f864b573a389c70116c25f911c57e33417760f59232"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
