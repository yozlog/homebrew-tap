cask "skills-manager" do
  arch arm: "aarch64", intel: "9f0268a6e572ad6f5abc3e5a7b07d6661f61d3715018018f35e818d9f5e461f6"

  version "1.22.5"
  sha256 arm:   "3d7f8c8e172af225fd879e643dae51d599c4eadc43bc617c9a9574cdd4edba10",
         intel: "9f0268a6e572ad6f5abc3e5a7b07d6661f61d3715018018f35e818d9f5e461f6"

  url "https://github.com/xingkongliang/skills-manager/releases/download/v#{version}/skills-manager_#{version}_#{arch}.dmg"
  name "Skills Manager"
  desc "AI Agent Skills Central Manager"
  homepage "https://github.com/xingkongliang/skills-manager"

  app "skills-manager.app", target: "skills-manager.app"
  binary "skills-manager.app/Contents/MacOS/skills-manager-cli"
end
