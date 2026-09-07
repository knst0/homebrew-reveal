cask "reveal" do
  version "0.4.2"
  sha256 "d4f4ffc09d3022fbf6fda0a4b26508ec82f50bc408ff3f2706f6eb7d5b3d09c6"

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
