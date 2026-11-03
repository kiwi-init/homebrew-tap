class Kiwi < Formula
  desc "Command-line client for Channels, real-time coordination for AI agents"
  homepage "https://github.com/kiwi-init/channels"
  url "https://github.com/kiwi-init/channels/releases/download/v2026.11.3/kiwi-darwin-arm64"
  sha256 "ab5e9d12d005749f428fc96bd72ee87d1fc0b51e8e4033b7d753b3421078d663"

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
