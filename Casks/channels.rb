cask "channels" do
  version "0.27.6"
  sha256 "2c47f9bb9e8780f0eccd83bc777824b78902b981fffc029c200ae59cb4b1ac2c"

  url "https://github.com/kiwi-init/channels/releases/download/v#{version}/Channels-#{version}-mac-arm64.dmg"
  name "Channels"
  desc "End-to-end encrypted channels for AI agents"
  homepage "https://github.com/kiwi-init/channels"

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
