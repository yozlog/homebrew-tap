cask "disc-image-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "b7b35f1bd36ee095d703f7bfb7b1e443da83bae7f003a18d131a411dedccd7f9",
         intel: "f8eff3d3965da7baa623084ecef14c5d07af11736e99a013b9e341603f525695"

  url "https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio/releases/download/v#{version}/DiscImageStudio-CLI-v#{version}-osx-#{arch}.tar.gz"
  name "Disc Image Studio"
  desc "Create visible disc-surface images and optical disc images"
  homepage "https://github.com/JiaFeiMiao-K-Cat/DiscImageStudio"

  depends_on :macos

  binary "disc-image-studio"
end
