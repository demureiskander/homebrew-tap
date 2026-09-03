class Pinpoint < Formula
  desc "Native macOS crosshair overlay built with SwiftUI and AppKit"
  homepage "https://github.com/demureiskander/PinPoint"
  url "https://github.com/demureiskander/PinPoint/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "44806da5e2a0eee7122e16d1132b45a49af5b14a13cbbbb75ec24851f7f5359e"
  license "Apache-2.0"

  depends_on xcode: ["14.0", :build]
  depends_on arch: :arm64

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
