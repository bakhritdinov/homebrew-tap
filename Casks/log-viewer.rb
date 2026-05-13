cask "log-viewer" do
  version "2.2.3"
  sha256 "c5d01a99ed1767e867ac760c552a7da8e9c53f776661ab73f859137c516ef052"

  url "https://github.com/bakhritdinov/log-viewer/releases/download/v#{version}/LogViewer-macOS-Universal.dmg"
  name "LogViewer"
  desc "Reactive Log Viewer for Grafana Loki"
  homepage "https://github.com/bakhritdinov/log-viewer"

  app "LogViewer.app"

  # `uninstall delete:` uses `rm -rf` and does not fail if the path is missing,
  # which lets `brew upgrade --cask log-viewer` proceed when the user has
  # manually deleted /Applications/LogViewer.app between installs.
  uninstall quit:   "com.logviewer.LogViewer",
            delete: "/Applications/LogViewer.app"

  zap trash: [
    "~/Library/Preferences/com.logviewer.LogViewer.plist",
    "~/Library/Saved Application State/com.logviewer.LogViewer.savedState",
    "~/Library/Application Support/LogViewer",
  ]
end
