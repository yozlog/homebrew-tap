cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0-alpha.18"
  sha256 arm:   "bbcd0f33ec6d27c6fc8fa7fa7b1d24f9f89a77fb5c95a6e57d453356ed20c892",
         intel: "dc8bb854528d06c8c741040dcc0318d68b00bcfe36e54ca860ea901906aa3514"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
