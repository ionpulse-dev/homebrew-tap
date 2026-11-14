# Formula template for the waymark tap (ionpulse-dev/homebrew-tap, file Formula/waymark.rb).
# The release workflow and scripts/brew-local.sh replace 0.2.0 and SHA256 (and URL for local tests).
class Waymark < Formula
  desc "Long-term agent memory: an MCP server over plain Markdown in Git"
  homepage "https://github.com/ionpulse-dev/waymark"
  url "https://github.com/ionpulse-dev/waymark/releases/download/v0.2.0/waymark-0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "fcf92c639cee15b16dda63b141b2820465489d3d402665b3f9ee089b095c82d2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "waymark"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/waymark --version")
  end
end
