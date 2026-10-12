cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.41.0"
  sha256 arm:   "eab2a74d88cb2c3414349197527a8fda5bbead2223fbf4198711e43f36571f70",
         intel: "58e3d621d1bab6ea0a675e01d7eae309d5180d3675f23309ed4970382dfe06d9"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
