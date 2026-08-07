cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.30.0"
  sha256 arm:   "58e1dbc1b1975127b80c66e1e407c9f7b906ac63aea6b35ef90f11654843615c",
         intel: "17a12750303b1be31784df88e1aac4481f3a2df6f92a787e45b3dac2157ca9ff"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
