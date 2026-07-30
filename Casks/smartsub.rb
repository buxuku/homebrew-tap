cask "smartsub" do
  version "3.6.0"

  on_intel do
    sha256 "cd9125c5746b68d90547b1a433348d98caa83407a2aa360900a75e3f2aaa1db9"
    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "c7f68b6534fc54515a9bda7e27c5f88c05be9c043986a787e4f5550b34ba734d"
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