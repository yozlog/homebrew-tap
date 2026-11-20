cask "kiri" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.2"
  sha256 arm:   "0f0ed39fc08f971c33ead60371c9d58768d993a853407e136f63f62a7edc9864",
         intel: "f78299a131d28801bcdfafd4bc0af8737441181d217110ee955ce251691d83d9"

  url "https://github.com/libracoder/kiri/releases/download/v#{version}/Kiri-#{version}-#{arch}.dmg"
  name "Kiri"
  desc "Lightweight container runtime compatible with Docker tooling"
  homepage "https://github.com/libracoder/kiri"

  auto_updates true
  depends_on macos: :sonoma

  app "Kiri.app"
end
