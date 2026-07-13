cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.28.3"
  sha256 arm:   "a216d9edbe35e897d5d2dfc64ed1b40726d896720e3e71d0e982eababad10abf",
         intel: "50c9928cd87191919b178308e8bb4aa3c622f369c777e019b4612b55f2472875"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
