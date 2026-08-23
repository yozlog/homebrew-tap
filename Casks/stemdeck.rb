cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"
  sha256 arm:   "952d29923323d01de4202f8f6406946e51694a6ef600e4feef29c4ea9fadf5f2",
         intel: "012bd215d1fc589b7a5873dac0590d54e09022f6de001be06ae9ba84699ab6be"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
