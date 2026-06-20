cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.25.0"
  sha256 arm:   "45df6e4b77b8215737f75c61ef2157b625ac69ae62e71374be3ea627e72a207b",
         intel: "ba44d973f8e93137fe2193a51409904da5e1010ca5b03f686cf89f6c128f6d7f"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
