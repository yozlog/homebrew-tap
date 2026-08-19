cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.11.1"
  sha256 arm:   "29d63218a2b9f10e3e119a4572c538aa69b47d900783c0a69c9c5f7f44e90d3d",
         intel: "88217a4ee972b50af5378cf265bd07fed45e99935b50794a0ad0600dc989687f"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
