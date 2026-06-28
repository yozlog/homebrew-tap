cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.8.0-alpha.1"
  sha256 arm:   "7747b95351179ed49395647ffb358fb9d1be6894608cd7c591349c4750fa4a0d",
         intel: "146e852f3ede8353907a2f86c38bd8466456053cb5a7d876fc1e2bc86c3bd42b"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
