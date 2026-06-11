cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.23.1"
  sha256 arm:   "a297921b8f803fa2fc82111d3795678c5e71a223aca31d5232d5e6924b686c0c",
         intel: "9eff62681cd70fabd3ca4d1b419c78fc5e331cd77216cb71c869fa425bc3e7ef"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
