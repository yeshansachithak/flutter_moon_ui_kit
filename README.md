# flutter_moon_ui_kit 🌙

A modern, elegant, and scalable **Flutter UI Kit** inspired by the Moon design system.  
Built for **mobile**, **web**, and **desktop** using clean architecture, responsive layouts, and full theming support.

---

## ✨ Features

- 🧩 Dozens of clean, reusable UI components
- 🎨 Light & dark theme support with extendable tokens
- 📱 Responsive layouts (PWA + mobile + desktop)
- 🧱 Consistent design system structure
- 💡 Built with Flutter 3.22+ and Material 3
- 🔥 Easily extendable for real apps or design systems

---

## 🚀 Getting Started

### 1. Install

Add to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_moon_ui_kit: ^0.0.2
````

Or from local path:

```yaml
dependencies:
  flutter_moon_ui_kit:
    path: ../flutter_moon_ui_kit
```

### 2. Import & Use

```
import 'package:flutter_moon_ui_kit/flutter_moon_ui_kit.dart';

MoonButton(
  label: "Click Me",
  onPressed: () {},
);

MoonTag(label: "Design");
```

---

## 🧱 Components Included

| Category   | Components                                                                  |
|------------|-----------------------------------------------------------------------------|
| Buttons    | `MoonButton`, `MoonIconButton`                                              |
| Inputs     | `MoonInputField`, `MoonPasswordField`, `MoonTextArea`, `MoonCodeInputField` |
| Toggles    | `MoonCheckbox`, `MoonRadioButton`, `MoonSwitch`                             |
| Tags       | `MoonTag`, `MoonTagInput`                                                   |
| Navigation | `MoonTabs`, `MoonSideNav`, `MoonBottomNavigationBar`, `MoonBreadcrumbs`     |
| Feedback   | `MoonToast`, `MoonSnackbar`, `MoonAlert`, `MoonTooltip`, `MoonEmptyState`   |
| Display    | `MoonCard`, `MoonImage`, `MoonAvatar`, `MoonCarousel`, `MoonSkeleton`       |
| Forms      | `MoonDatePicker`, `MoonFileUploader`, `MoonRatingStars`                     |
| Layout     | `MoonDivider`, `MoonStepperHorizontal`, `MoonStepperVertical`, `MoonDialog` |
| Theme      | `MoonTheme`, `MoonColors`, `MoonTextStyles`, `MoonSpacing`, `MoonIcons`     |
| Data       | `MoonTable`                                                                 |

> ✅ All components are responsive and support light/dark modes.

---

## 📦 Example App

Explore the full component catalog in the [example app](example/) included in this repo.

```bash
cd example
flutter run -d chrome
```

---

## 🧑‍💻 Contributing

We welcome contributions!

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/YourComponent`)
3. Commit your changes
4. Push and create a PR

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

## 🙌 Author

Maintained by [Yeshan Perera](https://github.com/yeshansachithak).

Inspired by [Moon Design System](https://moon.io).

---

> 🌟 Star this repo if you find it helpful — built with ❤️ for the Flutter community.
