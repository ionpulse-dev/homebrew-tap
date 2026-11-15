# Formula template for the waymark tap (ionpulse-dev/homebrew-tap, file Formula/waymark.rb).
# The release workflow and scripts/brew-local.sh replace 0.5.1 and SHA256 (and URL for local tests).
class Waymark < Formula
  desc "Long-term agent memory: an MCP server over plain Markdown in Git"
  homepage "https://github.com/ionpulse-dev/waymark"
  url "https://github.com/ionpulse-dev/waymark/releases/download/v0.5.1/waymark-0.5.1-aarch64-apple-darwin.tar.gz"
  sha256 "f14f10fb1f4d248143d62d1a655178195072188b65d66aa03aefdf1c793ae94c"
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
