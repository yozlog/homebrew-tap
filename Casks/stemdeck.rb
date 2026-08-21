cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.11.3"
  sha256 arm:   "383fabdea9ee6faafca19c787966ff598d9a5e435d90f366c2dc438f53847b07",
         intel: "e95577122c2e0d4309a51cd3cd50c3b9cb938c1be3c0f850ba0bda8fa45dd8bd"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
