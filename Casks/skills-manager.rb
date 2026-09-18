cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.40.0"
  sha256 arm:   "be0c796ea170868054a4cd3e4f6254a431c37474743183fba67e8960b0900ccd",
         intel: "f128572d74983c306e97583eeae7dba283b65ea0f88bcfe5f9030be79f079f52"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
