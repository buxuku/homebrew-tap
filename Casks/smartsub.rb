cask "smartsub" do
  version "2.15.0"

  on_intel do
    sha256 "4e1f3300f7aee91d02c2a37b0993e0f0212b4d475e8f7331af6c57252f228b2e"
    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "86b10556794d7c50fe9760a0e62fa421afcf3b28dde69c36affbe3d24c79b91c"
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