cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.35.1"
  sha256 arm:   "53b2e1f0f610195ba24be64c4138f6aba300ff96b1710a83f0aa32e6378dcee1",
         intel: "41266f88fb9899beade9cb82ed09c164b043ec5de291129cbd7ea8a49dbf0f95"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
