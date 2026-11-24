cask "mac-memory-monitor" do
  version "1.1.0"
  sha256 "f0e539dc43873344bfa1da6f635003ea7901b3d813f2aa3222e414f09f02e532"

  url "https://github.com/ryan-helou/MacMemoryMonitor/releases/download/v#{version}/MacMemoryMonitor-#{version}.zip"
  name "Mac Memory Monitor"
  desc "Menu bar app that shows why your Mac is lagging and helps free memory"
  homepage "https://github.com/ryan-helou/MacMemoryMonitor"

  depends_on macos: ">= :sonoma"

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
