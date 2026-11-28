cask "music-notch" do
  version "0.6.0"
  sha256 "913d1f38981ebe0158e821d23a5101d2111554e9770b1a1465170c0d7999bca1"

  url "https://github.com/ryan-helou/MusicNotch/releases/download/v#{version}/MusicNotch-#{version}.zip"
  name "Music Notch"
  desc "Dynamic Island for the Mac notch with album art and music controls"
  homepage "https://github.com/ryan-helou/MusicNotch"

  depends_on macos: :sonoma

  app "Music Notch.app"

  uninstall quit: "com.ryanhelou.MusicNotch"

  zap trash: "~/Library/Preferences/com.ryanhelou.MusicNotch.plist"

  caveats <<~EOS
    Music Notch is not notarized by Apple. The first time you open it,
    click Done, then go to System Settings → Privacy & Security and click Open Anyway.
    Then click OK when it asks to control Spotify or Music.
  EOS
end
