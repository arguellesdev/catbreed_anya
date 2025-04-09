# Catbreeds Pragma

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A Flutter app created as a code challenge for the Pragma recruitment process.

**Catbreeds Pragma** helps users explore different cat breeds by consuming data from [The Cat API](https://thecatapi.com/). Users can browse breeds, view descriptions, and access fun facts like origin, intelligence, and adaptability.

---

## Preview

![App Screenshot](screenshots/detail_preview.png) <!-- Replace with your own path -->

---

## Features

- **Splash Screen** with custom branding
- **Home Screen** welcoming users to explore cat breeds
- **Landing Screen** with a list of breeds displayed in cards
- **Detail Screen** with scrollable content and playful tone
- Integration with [The Cat API](https://thecatapi.com/)
- **Custom theme** with app colors and typography
- **Routing** using `go_router`
- Basic architectural separation: `models`, `services`, `views`
- Generated with [Very Good CLI](https://github.com/VeryGoodOpenSource/very_good_cli)

---

## Getting Started

This project was generated using the Very Good CLI 🧪  
It includes support for multiple flavors:

- `development`
- `staging`
- `production`

>  Only the **development** flavor has been used for this challenge.

To run the development flavor:

```bash
flutter pub get
flutter run --flavor development --target lib/main_development.dart
