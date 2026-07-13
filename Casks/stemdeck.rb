cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.6"
  sha256 arm:   "217aee36f58abd0b495a8df1d291d1c87b7bf54ffcb129c924b65de15684d8a2",
         intel: "c9829dac119edd023e89f5fd3ad2c761ca3466f47b01c6dfa8276b9869c6c8d6"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
