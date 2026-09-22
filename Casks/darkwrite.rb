cask "darkwrite" do
  version "1.3.0-beta.1"
  sha256 "b16cbcd098a0f6534b269c9e6eeb79f7e72e26d454a5518f42feef103eef3d79"

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
