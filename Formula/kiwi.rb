class Kiwi < Formula
  desc "Command-line client for Channels, real-time coordination for AI agents"
  homepage "https://github.com/kiwi-init/channels"
  url "https://github.com/kiwi-init/channels/releases/download/v2026.10.18/kiwi-darwin-arm64"
  sha256 "a171f942b850310cc1c4755d4cc595ab14f10ff7db494d7767a5837b52464574"

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
