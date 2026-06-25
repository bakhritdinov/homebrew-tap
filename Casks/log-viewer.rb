cask "log-viewer" do
  version "2.7.3"
  sha256 "bebd551c2912d506a542b6152aada8d6e9579b24e2c26ada70eb790de7c79f08"

  url "https://github.com/bakhritdinov/log-viewer/releases/download/v#{version}/LogViewer-macOS-Universal.dmg"
  name "LogViewer"
  desc "Reactive Log Viewer for Grafana Loki"
  homepage "https://github.com/bakhritdinov/log-viewer"

  app "LogViewer.app"

  # `delete:` is intentionally NOT set to /Applications/LogViewer.app -- the
  # `app` stanza already handles uninstall of that path. Duplicating it causes
  # Homebrew to attempt removal twice during `brew upgrade`, and the second
  # pass errors with "It seems the App source ... is not there." (#19, May 2026)
  uninstall quit: "com.logviewer.LogViewer"

  zap trash: [
    "~/Library/Preferences/com.logviewer.LogViewer.plist",
    "~/Library/Saved Application State/com.logviewer.LogViewer.savedState",
    "~/Library/Application Support/LogViewer",
  ]
end
