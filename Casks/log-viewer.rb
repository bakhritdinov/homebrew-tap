cask "log-viewer" do
  version "2.1.0"
  sha256 "73499e592034c863fcee40c9959205ea1f5597408d099823c7ce3c4e88e5ed9d"

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
