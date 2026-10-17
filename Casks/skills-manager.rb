cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.42.1"
  sha256 arm:   "daa706b58035e6e1d9eaa4c1ca379ccf0f7f1bcb14596b162f6a6d6be1593365",
         intel: "14971ab12767acd99bec67eda5bba87368d92dacdb072904eae049468df7d3c1"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
