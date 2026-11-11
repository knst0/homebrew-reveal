cask "reveal" do
  version "0.6.0"
  sha256 "1cddbe4a632a48a05af36c69069a05350466fca64051825c7ef536f759b9d2f0"

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
