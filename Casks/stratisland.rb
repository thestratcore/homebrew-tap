cask "stratisland" do
  version "1.1"
  sha256 "4447982f1510c9fcff8ed472f94255c9708896e1de5de7685858a8c1981063b4"

  url "https://github.com/thestratcore/StratIsland-swift/releases/download/v#{version}/StratIsland-#{version}.dmg"
  name "StratIsland"
  desc "Dynamic Island for the Mac notch showing live Claude Code and Codex CLI session status"
  homepage "https://github.com/thestratcore/StratIsland-swift"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "StratIsland.app"

  uninstall quit: "com.stratcore.stratisland"

  zap trash: [
    "~/Library/Application Support/StratIsland",
    "~/Library/Preferences/com.stratcore.stratisland.plist",
  ]

  caveats <<~EOS
    StratIsland needs its Claude Code / Codex hooks installed to show blocked and
    finished sessions. After launching, choose "Install hooks…" from its menu bar icon.
  EOS
end
