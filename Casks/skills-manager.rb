cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.33.1"
  sha256 arm:   "ed3ba5a7887b665c63050ed2dd6aecb46c234f6f3a7297664688ecc0ca954099",
         intel: "b6d2098190f043bc03386caf8aa517658066a0898d92fecab235e117f54b2683"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
