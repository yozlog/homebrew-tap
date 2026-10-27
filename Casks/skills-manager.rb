cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.1"
  sha256 arm:   "3d6a93a76bf94e85b2bf22af06016d618fabb070333e9b5e22aa38b0a61f7258",
         intel: "68da7e29771f25c881c3e79ea1607841928d292ad76f2fcbf80a75505bdb158c"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
