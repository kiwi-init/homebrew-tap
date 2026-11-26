cask "channels" do
  version "2026.11.31"
  sha256 "55454d5565de2a4b6361a08bac1588f28fb39460412a5cf0a9461e2b9361932f"

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
