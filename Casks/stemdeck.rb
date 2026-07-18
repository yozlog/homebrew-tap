cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.11"
  sha256 arm:   "660bc016e854ba06678f9470f5814532221209f041e35394d8c6e967dc847945",
         intel: "0937d9ec5980b32862b1106a3dd42daed0ed6b01bd409415dc04cc5e333533a5"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
