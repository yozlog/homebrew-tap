cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.28.0"
  sha256 arm:   "6f958ca203ce3aa81aa356f4d896dcda900f0c21073d9673d88a7550464168fd",
         intel: "03e8b0a51c8f83f11895c419bc60e6ba301ff75e057cac801211f3310aacd4f8"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
