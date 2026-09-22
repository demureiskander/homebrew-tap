# demureiskander Homebrew Tap

## Darkwrite

Local-first writing workspace for macOS.

```bash
brew tap demureiskander/tap
brew install --cask darkwrite
```

Darkwrite is currently unsigned. If macOS blocks its first launch, open
**System Settings → Privacy & Security** and choose **Open Anyway**.

## PinPoint

Native macOS crosshair overlay for Apple Silicon Macs.

```bash
brew tap demureiskander/tap
brew install demureiskander/tap/pinpoint
open "$(brew --prefix pinpoint)/PinPoint.app"
```

Or run:

```bash
pinpoint
```
