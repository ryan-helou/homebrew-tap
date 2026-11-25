cask "mac-memory-monitor" do
  version "1.3.1"
  sha256 "04d8d1413e0e9bf281361ef64829a43898d3a9b1466214984c74bb5e348119ce"

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
