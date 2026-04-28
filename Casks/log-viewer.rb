cask "log-viewer" do
  version "1.0.1"
  sha256 "dbf1eb334d0fdf95d20c3a4db102f5906c163033d1a71506767637de5974f811"

  url "https://github.com/boburbakhritdinov/log-viewer/releases/download/v#{version}/LogViewer-macOS-Universal.dmg"
  name "LogViewer"
  desc "Reactive Log Viewer for Grafana Loki"
  homepage "https://github.com/boburbakhritdinov/log-viewer"

  app "LogViewer.app"

  zap trash: [
    "~/Library/Preferences/com.logviewer.plist",
    "~/Library/Saved Application State/com.logviewer.savedState",
  ]
end
