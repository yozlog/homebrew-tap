cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "e191e8ebd884e83c20f8edc901aae405d934ccca500a0f7b0c5a93d04f18c339",
         intel: "b7e2208ccb129feea43bf38f06a78bfc16ebaad96e353f9b39c3d7c9e4e5955f"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
