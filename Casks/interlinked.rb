cask "interlinked" do
  version "2026.10.0"
  sha256 "76c309b96f494629d75f52b1784854c15804bc889ef86a24b64fd6b1b7f108b0"

  url "https://github.com/kiwi-init/interlinked-releases/releases/download/v#{version}/Interlinked-#{version}.dmg"
  name "Interlinked"
  desc "Minimal browser laid out like a terminal multiplexer"
  homepage "https://github.com/kiwi-init/interlinked-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Interlinked.app"

  zap trash: [
    "~/Library/Application Support/Interlinked",
    "~/Library/Caches/computer.interlinked",
    "~/Library/HTTPStorages/computer.interlinked",
    "~/Library/Preferences/computer.interlinked.plist",
    "~/Library/Saved Application State/computer.interlinked.savedState",
    "~/Library/WebKit/computer.interlinked",
  ]
end
