cask "log-viewer" do
  version "2.2.1"
  sha256 "4e971214488a6deefc858326640ffef40d289b0db6ec342a9f9e2dc31c1b88cd"

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
