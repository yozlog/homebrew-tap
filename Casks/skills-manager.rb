cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.24.0"
  sha256 arm:   "8152a8d1fc76eab2975b1de69dc8ffa1439855092bfe89638ea84687f7cd945d",
         intel: "2ec916661fa3f37b0a9f9b758c9d5b5b67a099f5706c105768bcb124e65ca947"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
