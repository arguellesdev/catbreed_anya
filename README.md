# Catbreeds Pragma

![coverage][coverage_badge]
[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A Flutter app created as a code challenge for the Pragma recruitment process.

**Catbreeds Pragma** helps users explore different cat breeds by consuming data from [The Cat API](https://thecatapi.com/). Users can browse breeds, view descriptions, and access fun facts like origin, intelligence, and adaptability.

---

## Preview
iOS
![image](https://github.com/user-attachments/assets/ddc8768b-840b-4ce4-8d10-87805229c66b)
![image](https://github.com/user-attachments/assets/ecdbbcbb-557b-44da-b6fb-987ab76178e6)
![image](https://github.com/user-attachments/assets/38f40af5-7d91-4743-b52c-0c33fb4cfaf0)
![image](https://github.com/user-attachments/assets/0bb7f839-ebf6-41a9-b06b-656faa0eabec)

Android
![image](https://github.com/user-attachments/assets/d3ccc805-35a4-4f33-a344-a680a6a224e3)
![image](https://github.com/user-attachments/assets/111fcb5c-b0db-45e8-a8ae-fe5751502ec3)
![image](https://github.com/user-attachments/assets/2796ff6f-8f4f-4cfc-b833-0eb2b2ad8958)
![image](https://github.com/user-attachments/assets/bf2ac7e2-ded6-49ae-b2ff-d8ffeca9d87f)
![image](https://github.com/user-attachments/assets/6625162f-d7ee-4da7-b556-3328c1b646ee)

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
