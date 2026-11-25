cask "mac-memory-monitor" do
  version "1.5.0"
  sha256 "7db65bad7bdbb0ae927ee6c44a4dda295d6a31bc0d9356b6c2f5212b995458c8"

  url "https://github.com/ryan-helou/MacMemoryMonitor/releases/download/v#{version}/MacMemoryMonitor-#{version}.zip"
  name "Mac Memory Monitor"
  desc "Menu bar memory monitor that explains lag and helps free memory"
  homepage "https://github.com/ryan-helou/MacMemoryMonitor"

  depends_on macos: :sonoma

  app "Mac Memory Monitor.app"

  zap trash: [
    "~/Library/Application Support/MacMemoryMonitor",
    "~/Library/Preferences/com.ryanhelou.macmonitor.plist",
  ]

  caveats <<~EOS
    Mac Memory Monitor is not notarized by Apple. The first time you open it,
    click Done, then go to System Settings → Privacy & Security and click Open Anyway.
  EOS
end
