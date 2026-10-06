cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.20.0"
  sha256 arm:   "0f85444c347e4cca18bbb9c2b5d1bed2dda411cde9df79d42335a9bf579db254",
         intel: "847dc713daf8b1a6c8658ce7f26203237d0233e7241b2cbfcf17c9e8d6d30b56"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
