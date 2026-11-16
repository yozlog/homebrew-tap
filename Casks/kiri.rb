cask "kiri" do
  arch arm: "arm64", intel: "x86_64"

  version "0.2.1"
  sha256 arm:   "c42c518eb6a4efcb995b52b987b83e848028a020eef5872e0ac16a1c7827fffa",
         intel: "66e5e9f6255ba109e1740078994d8346fbce3c1d7f77075699f3f7f6b9314cff"

  url "https://github.com/libracoder/kiri/releases/download/v#{version}/Kiri-#{version}-#{arch}.dmg"
  name "Kiri"
  desc "Lightweight container runtime compatible with Docker tooling"
  homepage "https://github.com/libracoder/kiri"

  auto_updates true
  depends_on macos: :sonoma

  app "Kiri.app"
end
