class Dragterm < Formula
  desc "Drag files from the command line on macOS"
  homepage "https://github.com/Wevah/dragterm"
  url "https://github.com/Wevah/dragterm/archive/d2989069ed13b69247e22b5a97cf4600784eb526.tar.gz"
  version "1.0.2"
  sha256 "b700836f3d6f24e5066946c7ee0daa33d0ef21ffae9fb4a67a439c57ffe56afc"
  license "MIT"

  def install
    cd "dragterm" do
      system "g++", "DTDraggingSourceView.m", "main.m", "-framework", "Cocoa", "-o", "dragterm"
      bin.install "dragterm"
    end
  end
end
