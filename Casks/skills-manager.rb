cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.3"
  sha256 arm:   "8fd4194fd1998732a67263917c97600b2e5b4a07df01978463d694a32194d326",
         intel: "f1ff4b6e57dcf34b329fcce36587ee820572a9807a960393f94f15511241fb1e"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
