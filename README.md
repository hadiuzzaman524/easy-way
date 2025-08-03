<table>
  <tr>
    <td><img src="/assets/images/easyway.png" alt="App Logo" width="180"/></td>
    <td>
      <h2>Overview</h2>
      <strong>Easy Way</strong> is a cross-platform mobile app for Android and iOS that allows users to quickly select two points on a map and instantly displays the optimal car route between them. With an intuitive, interactive map, users can easily mark start and end locations and see a clear, real-time driving route calculated using mapping APIs.

  <p align="left">
  <img src="/dict/android.png" width="152"  alt="Android" />
  <span style="display:inline-block; width: 40px;"></span>
  <img src="/dict/ios.png" width="170" alt="iOS" />
</p>
    </td>
  </tr>
</table>




## 🔧 Flavors & Running the App

This project is configured with the following build flavors:

* `development`
* `staging`
* `production`

### 1. Install Dependencies & Generate Code

Before running the app, make sure to fetch dependencies and generate the necessary code:

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

### 2. Run the App by Flavor

Use the shared entry point (`lib/main.dart`) to run the app with your desired flavor:

```bash
# Development
flutter run --flavor development --target lib/main.dart

# Staging
flutter run --flavor staging --target lib/main.dart

# Production
flutter run --flavor production --target lib/main.dart
```

---

## Testing 🧪

Run all unit and widget tests with coverage:

```bash
flutter test --coverage --test-randomize-ordering-seed random
```

---

## Localization & Translations 🌐

Easy Way uses [flutter\_localizations][flutter_localizations_link] and follows Flutter’s [official internationalization guide][internationalization_link].

### Adding New Strings

1. Add new strings and descriptions in the `lib/l10n/arb/app_bn.arb` and `lib/l10n/arb/app_en.arb` files:

```json
{
  "@@locale": "bn",
  "appTitle": "সহজ পথ",
  "clear": "মুছুন"
}
```
```json 
{
    "@@locale": "en",
    "distance": "Distance",
    "duration": "Duration"
}
```

2. Use localized strings in Dart:

```dart
import 'package:easy_way/l10n/l10n.dart';

final l10n = context.l10n;
Text(l10n.helloWorld);
```

---

## 📄 Generate and View Documentation

1. **Generate the documentation**
   Run the following command in your project root:

   ```bash
   dart doc .
   ```

2. **Serve and view the documentation**
   Use `dhttpd` to serve the generated docs:

   ```bash
   dart pub global activate dhttpd
   dart pub global run dhttpd --path doc/api
   ```

3. **Open in browser**
   After running the above command, open the link provided by `dhttpd` (typically: [http://localhost:8080](http://localhost:8080)) to view your documentation in the browser.

---

## Additional Notes

* Generate Android upload key:

```bash
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
```

* Build a production APK:

```bash
flutter build apk --flavor production -t lib/main.dart
```

---


[flutter_localizations_link]: https://api.flutter.dev/flutter/flutter_localizations/flutter_localizations-library.html
[internationalization_link]: https://flutter.dev/docs/development/accessibility-and-localization/internationalization

