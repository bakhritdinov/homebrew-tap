cask "log-viewer" do
  version "2.0.0"
  sha256 "11fe3e7e1724390707b1263898e72ffcf024ee303563238dbc72a4212e7f713c"

  url "https://github.com/bakhritdinov/log-viewer/releases/download/v#{version}/LogViewer-macOS-Universal.dmg"
  name "LogViewer"
  desc "Reactive Log Viewer for Grafana Loki"
  homepage "https://github.com/bakhritdinov/log-viewer"

  app "LogViewer.app"

  zap trash: [
    "~/Library/Preferences/com.logviewer.plist",
    "~/Library/Saved Application State/com.logviewer.savedState",
  ]
end
