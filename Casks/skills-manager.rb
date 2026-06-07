cask "skills-manager" do
  arch arm: "aarch64", intel: "ee0314ab4bfb58277ee5215d78ae9f0764c53cfe6e60387ff3441f1c1470422a"

  version "1.23.0"
  sha256 arm:   "1a388f2b54c46405a099b6f18e46e794a9b58d9d9402bed24d41534d9c64db4f",
         intel: "ee0314ab4bfb58277ee5215d78ae9f0764c53cfe6e60387ff3441f1c1470422a"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
