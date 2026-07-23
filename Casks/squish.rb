cask "squish" do
  version "1.0.0"
  sha256 "bea64cc3451b1e1a501f29f1525b7156c6875b28959d3a63e1503b02117ccf92"

  url "https://github.com/demureiskander/squish/releases/download/v#{version}/Squish.dmg"
  name "Squish"
  desc "Image compressor, converter and resizer for macOS"
  homepage "https://github.com/demureiskander/squish"

  depends_on macos: ">= :sonoma"

  app "Squish.app"

  # Приложение ещё не нотаризовано — снимаем карантинный флаг, чтобы открылось.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Squish.app"]
  end

  zap trash: [
    "~/Library/Application Support/Squish",
    "~/Library/Preferences/com.demureiskander.squish.plist",
  ]
end
