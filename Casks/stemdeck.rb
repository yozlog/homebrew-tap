cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.5"
  sha256 arm:   "20709389549ec2988c9a825939ece10811ab6617c568a53fbc582b52c69abeea",
         intel: "ebc6a980a321b9b800b407ccd9f76d2327b4664432e3ca93afcb27bde56ca5c7"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
