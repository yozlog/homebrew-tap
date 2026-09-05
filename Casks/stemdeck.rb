cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.17.0"
  sha256 arm:   "87ba5d1f0b3d1ff4ecc6cf3d6819ce3c7c7b2e292dd0966682b931721c358b96",
         intel: "451dd65bc8240a7a60a9d84ff286fb2379f35001b4b57dc505535b5917cf3ae7"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
