cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.28.5"
  sha256 arm:   "2a7c4b5c9be674d83494e7dd0c558d7c0736f7eb4e8834d4405b87ab04339176",
         intel: "354194b1eb3a69c564482dc9503b11a1106828714b8e0082b56d621357291dc2"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
