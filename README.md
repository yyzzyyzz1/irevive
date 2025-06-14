# irevive

## Overview
irevive is a cross-platform smartphone diagnostics tool designed to perform deep analysis on both Android and iOS devices. The goal is to help users identify issues, collect logs, and understand frequent problems through clear explanations. By offering a unified application, troubleshooting is consistent no matter which mobile platform is used.

## Chosen Technology
The project uses **Flutter** with the **Dart** language. Flutter compiles to native code on Android and iOS, delivering high performance with a single codebase and modern UI components. React Native with TypeScript was considered, but Flutter was chosen for its straightforward setup and predictable look across platforms.

## Key Features
- **Comprehensive log collection** to aid in debugging and support cases.
- **Error explanations** that describe known issues in plain language.
- **Frequent issue tracking** with recommendations for fixes.
- **Hardware tests** such as battery health checks and sensor diagnostics.
- **Device info screen** showing device details and battery level.

## Prerequisites
Install the following tools before building the application:
- Android SDK (platform tools and emulator images)
- Xcode for iOS builds (macOS only)
- Flutter SDK and CLI (run `flutter doctor` after installation)
- Any backend dependencies required for log storage or analytics


## Project Structure
The `app/` directory contains the Flutter project used to build the mobile application. Source code lives in `app/lib/` and dependencies are listed in `app/pubspec.yaml`.

## Getting Started
Run the following commands after installing the prerequisites:

```bash
cd app
flutter pub get
flutter run
```

These commands fetch packages and launch the application on a connected device or emulator.

