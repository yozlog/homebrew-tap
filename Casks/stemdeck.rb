cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.18.0"
  sha256 arm:   "809c648a6c083624c40e93482336baaf33996c844510a3c459a304cab4f237f9",
         intel: "06441bee7ce4dc63f4d5c6e7b47f04e686ad1ca23ebe2640fdafb991f84365a9"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
