cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.9"
  sha256 arm:   "7beb1cdadd2f4550a3ed1deaebd4781a4b4c1f18a593e2f1b0debfee502ef41d",
         intel: "0b517a3e854d2dd6fb7e909107f861e78a4d4009e9b89a716e6915153377d683"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
