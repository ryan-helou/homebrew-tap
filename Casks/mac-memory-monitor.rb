cask "mac-memory-monitor" do
  version "1.2.0"
  sha256 "9b93af24f75d8309316a1d3290170ee8ade45e0999e13ed43301ee6fa3ad5be9"

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
