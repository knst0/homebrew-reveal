cask "reveal" do
  version "0.5.0"
  sha256 "d2bf3f12d09f2cdf01a3b52119538aee96718b3cf96f2a61f69c3775c66d392c"

  url "https://github.com/knst0/reveal/releases/download/v#{version}/reveal-#{version}-macos.dmg"
  name "Reveal"
  desc "A fast image viewer"
  homepage "https://github.com/knst0/reveal"

  depends_on macos: ">= :big_sur"

  app "Reveal.app"
  binary "#{appdir}/Reveal.app/Contents/MacOS/reveal"

  zap trash: [
    "~/Library/Application Support/reveal",
    "~/Library/Preferences/io.github.knst0.reveal.plist",
    "~/Library/Saved Application State/io.github.knst0.reveal.savedState",
  ]
end
