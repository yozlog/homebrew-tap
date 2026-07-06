cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.28.1"
  sha256 arm:   "737257561403917ab10c6c182ede78175b4cb5e7085dc5dc3ffcb686c75a8955",
         intel: "ea2cbc1d360e380e4ff9c5c2a5b478c5c72f3233a4f80f3e6b8ef3048fca095b"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
