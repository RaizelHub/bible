# Stillword releases

## 1.3.0 — October 8, 2026

- A full year of scripture: 1,095 unique readings, preserving all previously shipped verse IDs and texts.
- Mark readings as read and view your reading days for the current week.
- Write private reflections and revisit them in Saved, alongside bookmarks.
- Search scripture, references, themes, and reflections; filter kept verses by theme.
- Three scripture text sizes, reduced-motion support, and improved small-screen layouts.
- Once-a-day and three-moment reminder presets, plus a single pause-all control.
- A first-visit introduction and automatic date rollover while the app remains open.
- Clear platform download cards, everyday-use information, and local-data/support guidance on the website.

Validation: 14 Flutter tests and static analysis passed. Browser checks cover responsive pages, reflection entry/search, saved data after offline restart, and web notification limitations. Android and Windows release builds succeeded; Android signing identity is unchanged and the Windows download checksum is verified.

Native downloads remain previews: Android is development-signed and Windows is unsigned. The free iPhone/web edition has no scheduled background notifications. Native reminder delivery follows device settings; open the app at least every 20 days to refill the queue. Local data does not sync or back up to a server.

## 1.2.0 — October 7, 2026

- Windows desktop app and per-user installer with scheduled notifications.
- Notification queue replacement on reopen, cancellation, and native queue validation.

## 1.1.0 — October 6, 2026

- Free iPhone Home Screen web edition with offline reading.
- A fixed sequence of 365 readings and one-time native notifications without weekly repeats.
