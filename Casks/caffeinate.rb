cask "caffeinate" do
  version "1.0.0"
  sha256 "fe6323e547c00a550f47aa28c12fd77b8f67099a6b495a6d2c353f3c413efe5c"

  url "https://github.com/evg4b/caffeinate/releases/download/v#{version}/caffeinate-#{version}.zip"
  name "Caffeinate"
  desc "A tiny macOS menu bar app that keeps your Mac awake, built around the /usr/bin/caffeinate tool that already ships with the system."
  homepage "https://github.com/evg4b/caffeinate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "caffeinate.app"

  zap trash: [
    "~/Library/Preferences/evg4b.caffeinate.plist",
    "~/Library/Saved Application State/evg4b.caffeinate.savedState",
  ]

  caveats <<~EOS
    #{token} is signed ad-hoc rather than with a Developer ID, and Homebrew
    quarantines everything it downloads, so macOS refuses to open the app until
    the quarantine flag is cleared:

      xattr -dr com.apple.quarantine /Applications/caffeinate.app

    The Finder route works too: open the app, let macOS block it, then allow it
    under System Settings > Privacy & Security > Open Anyway.
  EOS
end
