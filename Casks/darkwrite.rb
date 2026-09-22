cask "darkwrite" do
  version "1.3.0-beta.2"
  sha256 "f4864c0dd332a8e85ff4ecbdaa7ae5736983f03fc10aef8812ad6cd4d55e0f6d"

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
