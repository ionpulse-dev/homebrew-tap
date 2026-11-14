# Formula template for the waymark tap (ionpulse-dev/homebrew-tap, file Formula/waymark.rb).
# The release workflow and scripts/brew-local.sh replace 0.1.1 and SHA256 (and URL for local tests).
class Waymark < Formula
  desc "Knowledge base and memory for AI agents: an MCP server over Markdown in Git"
  homepage "https://github.com/ionpulse-dev/waymark"
  url "https://github.com/ionpulse-dev/waymark/releases/download/v0.1.1/waymark-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "d887bbe238f51a07f3673adc8c5f1e895f57a31743ea14ec3ef28a74a5e94cb3"
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
