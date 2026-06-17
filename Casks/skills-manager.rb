cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.23.2"
  sha256 arm:   "74c74a653262dbbe7cf0814d9e7272f1071b854d9c03e83de06b8246fb6de4d6",
         intel: "51dcc4ca55f908e9c3a140200be6d7a50a66f8d1d9d2d5a21df20c91e981cced"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
