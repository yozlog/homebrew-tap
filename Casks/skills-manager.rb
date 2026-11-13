cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.44.0"
  sha256 arm:   "e53dbb8112895fc7e2765282e59f356153b0ea18f14b8c9dbd96a83aeec02dd2",
         intel: "5fa346d734b2fa9b95aec678ee926a0b3d4eebd1994b2eee393040b46dd23367"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
