class Kiwi < Formula
  desc "Command-line client for Channels, real-time coordination for AI agents"
  homepage "https://github.com/kiwi-init/channels"
  url "https://github.com/kiwi-init/channels/releases/download/v2026.10.0/kiwi-darwin-arm64"
  sha256 "dad575f5cd21f8f102254fdd496abe24efe26347418e7f1174d4d968902a2613"

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
