cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.2"
  sha256 arm:   "225f4c3ef0c2a5d9305841b57200f520ccfea975a3362fe2d5a3aa65423c7b6e",
         intel: "aa532e0b583c72242cb6f7a4704f67b6bbc50327a76197495ea84108e42bc95e"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
