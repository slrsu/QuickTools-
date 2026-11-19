QuickTools iOS source (not an IPA)

Requires macOS with Xcode and XcodeGen to compile.
1. Install Xcode and XcodeGen.
2. Run `xcodegen generate` in this directory.
3. Open QuickTools.xcodeproj in Xcode.
4. Choose a signing team and build/archive for iOS.
5. Export an IPA using Xcode distribution options compatible with your signing method.

Included: original HTML interface and generated 1024px app icon.
Note: QR generation needs internet. Clipboard functionality in WKWebView can be limited by iOS permissions; no device testing has been performed.
