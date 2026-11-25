cask "mac-memory-monitor" do
  version "1.3.0"
  sha256 "4a3744f421495e6728a56d984d75f10155bf776952e6fe4049b9237c49af8d29"

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
