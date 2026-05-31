cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.22.4"
  sha256 arm:   "d90a892adea5930b4d838d0c6725f1464c87f3ec00e9586cd0168110b8176aa9",
         intel: "7009350b39e2190e6e48c4ffcdec8127ece8525ccf49e5338ae7a833708acff8"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
