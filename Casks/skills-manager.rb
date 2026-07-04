cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.27.0"
  sha256 arm:   "5c1240a0c61a854b7855360cfc2a4c0e6f4ead2011b074d6d451bb51a6602ff4",
         intel: "deab2270cfcefb58a00671b158272c1bf69e18a3a043e17d6372bc105123a505"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
