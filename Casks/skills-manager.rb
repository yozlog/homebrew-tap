cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.31.0"
  sha256 arm:   "48e4f3681c6318d99da7b02c10565564f09e8cc9d1113f9a73f3e1a12701984a",
         intel: "13f8cfd910c91b01dc24883161a370f7e209d171997333d9656001a5d6c92f08"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
