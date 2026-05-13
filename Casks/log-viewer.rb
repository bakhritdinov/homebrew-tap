cask "log-viewer" do
  version "2.2.4"
  sha256 "3f176f819ae20b61c584445b4e93f7d4a5e724ea121fb30c0c465c86878e8f2a"

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
