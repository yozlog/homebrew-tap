cask "disc-image-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.6.0"
  sha256 arm:   "9a5dbd7398d55037591b70af15a5d1ae3df56a5fef0620dcd58488b5dc236055",
         intel: "f6cc38c391367b969a5919d31dde19b242fa7fa5269082aa7ab50713fd7a7fc4"

  url "https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio/releases/download/v#{version}/DiscImageStudio-CLI-v#{version}-osx-#{arch}.tar.gz"
  name "Disc Image Studio"
  desc "Create visible disc-surface images and optical disc images"
  homepage "https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio"

  depends_on :macos

  binary "disc-image-studio"
end
