class Smassh < Formula
  desc "TUI-based typing test application inspired by Monkeytype"
  homepage "https://github.com/kraanzu/smassh"
  url "https://github.com/kraanzu/smassh/releases/download/v3.2.1/macos-smassh"
  version "3.2.1"
  sha256 "5490269cecf45a1aeb247264fce12d855c412a2cbd69c43742b0f55c919cc598"
  license "GPL-3.0-only"

  def install
    bin.install "macos-smassh" => "smassh"
  end
end
