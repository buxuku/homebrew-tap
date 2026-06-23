cask "smartsub" do
  version "3.0.0"

  on_intel do
    sha256 "f32a075232590f534bc5cd684ed2184242e8f6b69b3f66e6b4bee4e8245bf464"
    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "74c8f1393d6704d79c3a3247951f67b598ab6482b7e31967efce40a1c17d5097"
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