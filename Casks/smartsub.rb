cask "smartsub" do
  version "3.12.0"

  on_intel do
    sha256 "d136c0852eb450d5549f6d236c17d1638393e696846cf0bfda72087be0225763"
    url "https://github.com/buxuku/SmartSub/releases/download/v#{version}/SmartSub_Mac_#{version}_x64.dmg"
  end

  on_arm do
    sha256 "cce75a948182c52dca7f270e7ee771725b859956da9b0765bb341d95b65e0449"
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