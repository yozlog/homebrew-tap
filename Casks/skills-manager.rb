cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.28.2"
  sha256 arm:   "888c191a08ce231b25eb12d308e970cdf2ba3ce8199ec164a300a33c27665c23",
         intel: "a1547acb7e5ae1e0bbfe7b25ff566a5d28d7a0fac91ba502a4fe8ed8fa9a2edc"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
