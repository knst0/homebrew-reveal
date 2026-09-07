cask "reveal" do
  version "0.4.1"
  sha256 "11aa6fdbb7fe7d3526c44806918427e3a71dd15194be18bf48e9eea55f8758f2"

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
