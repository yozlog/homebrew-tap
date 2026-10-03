cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "09fde4dacda085d6ad1823b3d540c09f3fc69f82efa297924cc2519422416689",
         intel: "7a24a97c8730e5a6d63c3d21a3c93d7c9bafe80d85f099e78239914e7ad9c403"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
