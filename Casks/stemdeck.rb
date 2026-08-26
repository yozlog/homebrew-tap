cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.15.1"
  sha256 arm:   "88f9b66f1a88038a289799c04bf007a00e5527cb90bdd77626c3ac32bce22a2f",
         intel: "76aae5fe404185b2dbd11e9cfd499524e7b052252167c54d703d5383452376b1"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
