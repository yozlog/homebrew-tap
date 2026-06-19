cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0-alpha.15"
  sha256 arm:   "bfa6620b7895a5cbc8788d0f1f18cf3a4d9e7e315f7f87f2bb4406e961deed8a",
         intel: "049753e3e8abc00c06191838caecafff7f106a755dc01551600c7cfbe47bb375"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
