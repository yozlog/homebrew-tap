cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.32.0"
  sha256 arm:   "570e471b58a151955ddd91eb9c2a87a09f48d967984c97a075d18df981a172bf",
         intel: "956a7bad08c660912661c12848abe02b5a1c10399a5153fd7b0528c24ad6cddc"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
