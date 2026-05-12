cask "log-viewer" do
  version "2.2.2"
  sha256 "cb3d0837ecd215516825d5d6146a95dbcee977d23b6ccd1d8a6aa54831401d41"

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
