cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "490eace0d747fda7da9b94c818e982d8cdfd5a3012c0e240bb7dc6452673e530",
         intel: "44de42c9f81b0862256a4dabbee255dfbc73516a46aa57afcf8b4d1d2a1d6408"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
