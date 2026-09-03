class Pinpoint < Formula
  desc "Native macOS crosshair overlay built with SwiftUI and AppKit"
  homepage "https://github.com/demureiskander/PinPoint"
  url "https://github.com/demureiskander/PinPoint/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "8d0a24335a4a4eb3c5acb1a7efbf9db3fc87eb2f26589e23b45afe254312f146"
  license "MIT"

  depends_on arch: :arm64
  depends_on xcode: ["14.0", :build]

  def install
    chmod "+x", "scripts/build.sh"
    system "./scripts/build.sh"
    prefix.install "build/PinPoint.app"
    bin.write_exec_script prefix/"PinPoint.app/Contents/MacOS/PinPoint"
  end

  def caveats
    <<~EOS
      Start PinPoint from Finder:
        open #{prefix}/PinPoint.app

      Or from Terminal:
        pinpoint

      Enable Accessibility permission in macOS System Settings if you use
      Follow active window.
    EOS
  end

  test do
    assert_path_exists prefix/"PinPoint.app/Contents/MacOS/PinPoint"
  end
end
