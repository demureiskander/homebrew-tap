cask "darkwrite" do
  version "1.3.0-beta.4"
  sha256 "013daa64302f7544e36c9b761bb56fc13fc3b5b466f1adc1c60187b389235a8c"

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
