cask "channels" do
  version "2026.11.14"
  sha256 "8f08aa09ab089d3ffdf03b4a3d06a183bbdb70fb823480d0a8aee668cb49540a"

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
