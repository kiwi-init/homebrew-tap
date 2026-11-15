class Kiwi < Formula
  desc "Command-line client for Channels, real-time coordination for AI agents"
  homepage "https://github.com/kiwi-init/channels"
  url "https://github.com/kiwi-init/channels/releases/download/v2026.11.22/kiwi-darwin-arm64"
  sha256 "ec74011a3474cd9d23e0df2c6c6dea57cad4c1650f790decf82cfbecff406f93"

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
