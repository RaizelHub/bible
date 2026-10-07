# Verified for v1.1.0

- Seven Flutter tests pass.
- Dart analysis reports no issues.
- Android release-mode preview builds successfully (development signing).
- Browser checks pass at 320, 390, 768, and 1440 pixels.
- Preview tabs, arrow-key navigation, FAQ panels, anchor links, and APK download were exercised in headless Chrome.
- `artifacts/website-preview.png` shows the desktop landing page.
- Real-phone notification delivery and iOS compilation remain unverified.

Free iPhone web edition checks:
- Flutter web compilation and static analysis.
- Safari installation guide and standalone web-app manifest.
- Custom service worker scoped to the app and content-versioned offline cache.
- Mobile-browser test of saved verses surviving an offline restart, with no external font or renderer requests.
- No claim of iPhone notification support or an App Store/IPA download.
- Physical iPhone Home Screen installation remains to be verified on a device.
