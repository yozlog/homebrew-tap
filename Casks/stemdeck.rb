cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.21.0"
  sha256 arm:   "8d1e8efcfdc9506a169cc4176ff6f1a62ac589d76531bbc236b5d2acbfec9956",
         intel: "ef1d7a39aa26e60d609e8f2ea09b3b5aeadbfa3fc4a2b653381cd20e4cdd88de"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
