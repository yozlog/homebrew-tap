cask "stemdeck" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "65e463c2b083fed6f76771bc8b562f5e268f3e41a9dec962e67c035814e8d575",
         intel: "30157c1670854fc6626fdda49168f3dabfc61ee9da06b6eca610eb0c1f6e8e85"

  url "https://github.com/stemdeckapp/stemdeck/releases/download/v#{version}/StemDeck-macOS-#{arch}.dmg"
  name "StemDeck"
  desc "Audio stem extraction platform with a multitrack mixer"
  homepage "https://github.com/stemdeckapp/stemdeck"

  app "StemDeck.app"
end
