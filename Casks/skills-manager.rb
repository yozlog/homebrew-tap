cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.37.0"
  sha256 arm:   "766c4540c388dece606ff66aea3836d80f4b7619551fcea3635501dea7352ab1",
         intel: "6e4dbc263444a36690687d1febde27f5b4a41b32d72c9c5ac2a04a769cc8f5e1"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
