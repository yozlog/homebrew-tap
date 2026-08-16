cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.34.0"
  sha256 arm:   "aafadf8d354c93f8c54fe3f42faae2fa7e4d8700918991cdf5eefeaae8b9c7c0",
         intel: "c239fc6b79513fa186be33550186a911f711591faabac8d36d67310ab029cd84"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
