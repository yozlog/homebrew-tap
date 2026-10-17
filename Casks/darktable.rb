cask "darktable" do
  arch arm: "arm64", intel: "x86_64"

  version arm: "5.6.2", intel: "5.6.1"
  sha256 arm:   "6ff88e58a2a59cb07b0a1502fea7205e68cd783380a33a3ce7bda68ec29def0c",
         intel: "ab09e11d548a7028f7bacc2bc4549a272c4e8d385be0e38ecc9e7943914abe61"

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}-#{arch}.dmg"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  on_arm do
    depends_on macos: :sequoia
  end
  on_intel do
    depends_on macos: :ventura
  end

  app "darktable.app"

  uninstall quit: "org.darktable"

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
