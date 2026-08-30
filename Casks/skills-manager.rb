cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.36.0"
  sha256 arm:   "e53f88c1a7e048cccd798ac6d4ba931b8da84f621d40fad94a919a3f6d145ea5",
         intel: "ee149cf64275e75286545f33f9adc79ef4a8947600348ca25e93eb2c49d4a55b"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
