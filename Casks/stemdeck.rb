cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.4"
  sha256 arm:   "5ed76023a36f15e0869c93bee48a9ae7ee5a092b4196710cff77da132f12bdc5",
         intel: "30cafcdccab3881b4935b02144be478d1d941e269545d8433830bf5880aab806"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
