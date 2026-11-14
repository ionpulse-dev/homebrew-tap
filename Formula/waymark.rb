# Formula template for the waymark tap (ionpulse-dev/homebrew-tap, file Formula/waymark.rb).
# The release workflow and scripts/brew-local.sh replace 0.1.3 and SHA256 (and URL for local tests).
class Waymark < Formula
  desc "Knowledge base and memory for AI agents: an MCP server over Markdown in Git"
  homepage "https://github.com/ionpulse-dev/waymark"
  url "https://github.com/ionpulse-dev/waymark/releases/download/v0.1.3/waymark-0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "49b59ce72420acc794cfad1c12f4bcd1a5b9b28456b9fa7909de805e2f2e9195"
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
