cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.18.1"
  sha256 arm:   "6eb351b8b3f092d244a31139ce13fb0ad93b004302ac4c7afa144ebac4df33ea",
         intel: "65f4c552e893feb5acc12f28d49b2b89d7c8e0531b6be70e5366c427bbbc1f59"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
