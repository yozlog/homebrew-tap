cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0-alpha.12"
  sha256 arm:   "1e13705334558f4757e0459495f86e74e98b94a5f0a7caae75a92a0bf7a445a3",
         intel: "f13fe0fcd8aae5f181cef64b82d4c71b7272cb1b8902585c4138081b5fe67ed7"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
