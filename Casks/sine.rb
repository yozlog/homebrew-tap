cask "sine" do
  arch arm: "arm64", intel: "x64"

  version "2.3.3"
  sha256 arm:   "db54cc1d920e2c3d522aba69c5827b9f2e7d3d28dafb0125a815e16e57c0890e",
         intel: "783cda699c3314228de80d884af908375532a3298c310424f63fe0221faa3f6e"

  url "https://github.com/CosmoCreeper/Sine/releases/download/v#{version}/sine-osx-#{arch}"
  name "Sine"
  desc "Theme and mod manager for Firefox-based browsers"
  homepage "https://github.com/CosmoCreeper/Sine"

  depends_on :macos

  container type: :naked

  generated_script "sine-installer-wrapper", content: <<~SH
    #!/bin/sh
    installer="#{staged_path}/sine-osx-#{arch}"
    /usr/bin/xattr -d com.apple.quarantine "$installer" 2>/dev/null || true
    /bin/chmod +x "$installer"
    /usr/bin/codesign --force --deep --sign - "$installer"
    exec "$installer" "$@"
  SH
  binary "sine-installer-wrapper", target: "sine-installer"

  caveats <<~EOS
    Sine's installer modifies Firefox-based browser installations and profiles.
    Before running it, grant your terminal Full Disk Access in System Settings,
    then launch the installer with:

      sine-installer
  EOS
end
