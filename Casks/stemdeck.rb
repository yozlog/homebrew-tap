cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.17"
  sha256 arm:   "2984aa49850234d7130f9ab43632dd5b7d456fefa8be167f3f1492344a8b91a8",
         intel: "9e3a7899a5d19f0ac5796648e527f4806aa2f548f2a75b939561a779be1d956d"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
