cask "log-viewer" do
  version "2.2.3"
  sha256 "7e44dc1d7492453e52c929ebd6a5218557b20649f7aa5be9f0c11acb93cc2057"

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
