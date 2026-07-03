cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.25.1"
  sha256 arm:   "7d091d1e2ae1eab3fb576c05b2dfb9e04b7d4932bcb47d2738ed6ac53a2f5081",
         intel: "e62e5bd6438bd4377fab57c29a3935ff09e88ee6825c6732f162315fd8038a4e"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
