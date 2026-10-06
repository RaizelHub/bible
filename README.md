# Stillword

Flutter Bible verse app with a static Android download website, ready for GitHub Pages.

## App

- Animated cream-and-green UI with icons, bundled fonts, bookmarks, and verse copying.
- Adjustable morning / afternoon / night reminders (7 AM, noon, 9 PM by default).
- **365 unique new KJV verses, with no automatic repeats.** Each calendar day has three fixed reading slots. The sequence does not reset weekly, reshuffle on restart, or wrap after exhaustion.
- Local persistence keeps the plan's start date, bookmarks, and scheduled reminder history. Moving a reminder's time does not reissue an elapsed verse.
- The previous 21 verse IDs remain available for existing bookmarks; the new plan skips all of those old readings.

### What “no repeats” means

The collection spans 122 calendar days (the final day has two readings). Disabled and missed slots are skipped; disabling reminders does not pause the reading calendar. At the end, the app shows a completion message and stops verse reminders rather than repeating. Bookmarks and manually requested test notifications can intentionally show an existing verse. Reinstalling or clearing app data starts a new plan.

### Offline notifications

Android and iOS have no unlimited built-in queue for different verses. Stillword schedules up to 60 **one-time** verse notifications over the next 20 days, plus one refill reminder. Every app open/resume refreshes the queue. Open the app at least every 20 days to continue receiving verses. No remote server, subscription, or internet connection is required.

Android uses inexact idle-allowed alarms, so delivery may be later than the chosen minute. Banner visibility depends on notification permission, Focus / Do Not Disturb, and battery settings. Reopen after a timezone change. The original weekly notifications are cancelled during upgrade.

## Run and verify

Requires Flutter 3.44 / Dart 3.12 or compatible newer versions.

```sh
flutter pub get
flutter run
flutter test
flutter analyze
flutter build apk --release
```

The Android download is a **development-signed preview**. The current Gradle release configuration uses the local debug key; use a persistent private release key before public production distribution. APK updates require the same signing key. iOS source is included, but iPhone compilation and signing require macOS / Xcode; there is no iPhone download yet.

## Website and GitHub Pages

The buildless website lives in `docs/`. It uses relative asset paths so it works at `https://RaizelHub.github.io/bible/`. The URL is the expected address after publication; creating these files does not publish it.

The local Git repository has `main` as its initial branch and this origin:

```text
https://github.com/RaizelHub/bible.git
```

After committing your changes, publish with:

```sh
git push -u origin main
```

Then open [repository Pages settings](https://github.com/RaizelHub/bible/settings/pages), set **Build and deployment → Source → GitHub Actions**, and run **Publish Stillword website** under Actions if needed. The included `.github/workflows/pages.yml` deploys `docs/` on subsequent pushes to `main`. See [GitHub's publishing-source instructions](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site).

Alternatively, choose **Deploy from a branch → main → /docs**. Use one publishing method. For branch deployment, remove the Pages workflow or leave it disabled.

### Update the downloadable app

```sh
flutter build apk --release
node tool/package-download.mjs
```

Commit `docs/downloads/Stillword-android.apk` and `docs/downloads/release.json` with the website. The packager checks GitHub's 100 MiB file ceiling and creates version, byte-size, and SHA-256 metadata. It uses the release APK, not the much larger debug APK.

### Website preview and checks

```sh
node tool/preview-site.mjs
# Open http://127.0.0.1:4173/bible/
```

For optional browser QA, install the pinned test tooling with `npm ci --prefix tool/browser`, then run `node tool/check-site.mjs` in a second terminal. Set `CHROME_PATH` if Chrome is not in the default Windows location. It tests 320 / 390 / 768 / 1440 px layouts, preview tabs, keyboard controls, FAQs, page links, and the APK download.

## Sources and maintenance

`lib/verses.dart` includes stable IDs: never reorder entries once released. The new selections and source license are in `tool/source/`. KJV data comes from [thiagobodruk/bible](https://github.com/thiagobodruk/bible), `json/en_kjv.json`. The reference names are mapped to English; source book names were in Portuguese. Scripture text is preserved except for removing editorial brace annotations where present. The generator rejects duplicate normalized text and references, and produces 365 additional selections.

To reproduce the generated library, download that upstream JSON to `tool/source/en_kjv.json` and run `node tool/generate_verses.mjs`. Keep the checked-in selected list and stable IDs authoritative; review any upstream differences before replacing data. The full source download is ignored by Git. Font licenses are included alongside the bundled font files.

## Validation limits

Unit and widget tests cover all 365 unique readings, exhaustion without wraparound, daylight-saving scheduling, legacy bookmark IDs, disabling notifications, denied permissions, and changing times without resending elapsed readings. Browser checks exercise the landing page at desktop and phone sizes. Real-device notification delivery and iOS builds still need device validation.
