cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.0"
  sha256 arm:   "259d7b36e4638abe4edd46dae38c43f714243d1bccc34c29e39f7b9e45170b77",
         intel: "cafa132cdcb88655af08b4c92553bfe2a0e5fac1f92bc941d0cd7f973b86aa0c"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
