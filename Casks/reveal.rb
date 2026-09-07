cask "reveal" do
  version "0.4.0"
  sha256 "c3d096c566ca466340174e3b3dbb84c4787ad041125b18d125215dc2de842739"

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
