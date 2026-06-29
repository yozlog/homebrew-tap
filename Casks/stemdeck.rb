cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.2"
  sha256 arm:   "4b7e6cffceab136c8886a5a1a89eff0d89accf79a65468c9f3b780604ae2cc30",
         intel: "ec3c93b89e5b50f985a523ef0dfe4e7ea1951e38e6fa14c1f9a88349ca08d3b2"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
