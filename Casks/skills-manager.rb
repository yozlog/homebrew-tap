cask "skills-manager" do
  arch arm: "aarch64", intel: "x64"

  version "1.43.3"
  sha256 arm:   "fb49fd15194a8292fc51adc60ee7cd716c92815f1de00ec6235e95bba01f74ae",
         intel: "a5af4946947a85101ba211606bf111fe13f6f993f6ad1da6c20a29b2ed2e546d"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
