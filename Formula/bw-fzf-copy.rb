class BwFzfCopy < Formula
  desc "A script-based TUI tool that uses fzf to quickly search and copy items from Bitwarden CLI"
  homepage "https://github.com/yozlog/bw-fzf-copy"
  url "https://github.com/yozlog/bw-fzf-copy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d56a3a2f334d8d84a9b4f355aaa21c500f869ba99204c9655a78b1993f487979"
  license :unlicense

  depends_on "bitwarden-cli"
  depends_on "fzf"
  depends_on "jq"

  def install
    bin.install "main.sh" => "bwfzfcp"
  end

  test do
    assert_match "Select an item", shell_output("#{bin}/bwfzfcp --help", 1)
  end
end
