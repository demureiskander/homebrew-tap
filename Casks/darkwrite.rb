cask "darkwrite" do
  version "1.3.0-beta.3"
  sha256 "c74ee0e9bdde68a4acd434671c45818c802b1b48948ce493f6220db61d0dd02d"

  url "https://github.com/demureiskander/darkwrite/releases/download/v#{version}/Darkwrite-Installer.dmg"
  name "Darkwrite"
  desc "Local-first writing workspace"
  homepage "https://github.com/demureiskander/darkwrite"

  app "Darkwrite.app"

  # Darkwrite is currently unsigned and not notarized. macOS will request
  # confirmation for the first launch in System Settings → Privacy & Security.
  zap trash: [
    "~/Library/Application Support/Darkwrite",
    "~/Library/Preferences/io.github.astudentinearth.darkwrite.plist",
  ]
end
