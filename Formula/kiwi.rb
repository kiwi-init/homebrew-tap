class Kiwi < Formula
  desc "Command-line client for Channels, real-time coordination for AI agents"
  homepage "https://github.com/kiwi-init/channels"
  url "https://github.com/kiwi-init/channels/releases/download/v2026.10.11/kiwi-darwin-arm64"
  sha256 "2e7110e1a58cee88f7713f564531b7eecb6f12ee2f7a77dd5f22fc8f643b0c21"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "kiwi-darwin-arm64" => "kiwi"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kiwi --version").strip
  end
end
