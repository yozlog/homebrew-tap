cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.17.2"
  sha256 arm:   "266811db5e4ced58078964f4b9adb55fb291f5beb91d300da385dc209349f5fd",
         intel: "0510732165fb1af32c16c39292e919233c62491b53bd12e8079e60bca04fd7ea"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
