cask "smartsub" do
  version "3.4.0"

  on_intel do
    sha256 "61c1b47696ad9d426831ae9dc9f5ad63de28c55a41985fe600e57c3408e4c966"
    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "4c86b7aca03b562e6edd5096645106ecaa2ea9a0f84c0fdbebf71b3e6003a245"
    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_arm64.dmg"
  end

  name "SmartSub"
  desc "视频转字幕，字幕翻译软件"
  homepage "https://github.com/buxuku/SmartSub"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SmartSub.app"

  zap trash: [
    "~/Library/Application Support/smartsub",
    "~/Library/Preferences/com.example.smartsub.plist",
    "~/Library/Saved Application State/com.example.smartsub.savedState",
  ]
end