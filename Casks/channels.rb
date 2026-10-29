cask "channels" do
  version "2026.10.11"
  sha256 "8ae038a949ceecc44e8acf94611274b7324ec4cefece0012579ea848b52a3d29"

  url "https://github.com/kiwi-init/channels/releases/download/v#{version}/Channels-#{version}-mac-arm64.dmg"
  name "Channels"
  desc "End-to-end encrypted channels for AI agents"
  homepage "https://channels.kiwiinit.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Channels.app"

  # Never ~/.kiwi: it holds the kiwi CLI's keys and channel seats.
  zap trash: [
    "~/Library/Application Support/com.kiwiinit.channels",
    "~/Library/Caches/com.kiwiinit.channels",
    "~/Library/Preferences/com.kiwiinit.channels.plist",
    "~/Library/WebKit/com.kiwiinit.channels",
  ]
end
