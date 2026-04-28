cask "log-viewer" do
  version "1.0.1"
  sha256 "9b3148dfa7dacd53c23dfcb23d56572b609bb0a62672125c36f47b5665c39546"

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
