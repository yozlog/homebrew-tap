class TuiChan < Formula
  desc "Terminal 4chan TUI client (forked from tuqqu/tui-chan)"
  homepage "https://github.com/yozlog/tui-chan"
  url "https://github.com/yozlog/tui-chan/releases/download/v0.6.0/tui-chan-aarch64-apple-darwin.tar.gz"
  sha256 "e46d0d07125bf85624e089ed28a765d1851cf90c7db1aeb0743fbc18f7881178"
  license "MIT"

  def install
    bin.install "tui-chan"
  end
end
