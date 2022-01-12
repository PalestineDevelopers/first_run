# palestine_first_run

## Part of [PalestineDevelopers](https://github.com/PalestineDevelopers)

Lightweight and easy check if the app runs for its first time, apply that to custom calls.

[![License](https://img.shields.io/github/license/PalestineDevelopers/first_run?style=for-the-badge)](https://github.com/PalestineDevelopers)
[![Pub](https://img.shields.io/badge/Palestine%20First%20Run-pub-blue?style=for-the-badge)](https://pub.dev/packages/palestine_first_run)
[![Example](https://img.shields.io/badge/Example-Ex-success?style=for-the-badge)](https://pub.dev/packages/palestine_first_run/example)

[![PUB](https://img.shields.io/pub/v/palestine_first_run.svg?style=for-the-badge)](https://pub.dev/packages/palestine_first_run)
[![GitHub release](https://img.shields.io/github/v/release/PalestineDevelopers/first_run?style=for-the-badge)](https://github.com/PalestineDevelopers/first_run/releases)
[![GitHub stars](https://img.shields.io/github/stars/PalestineDevelopers/first_run?style=for-the-badge)](https://github.com/PalestineDevelopers/first_run)
[![GitHub forks](https://img.shields.io/github/forks/PalestineDevelopers/first_run?style=for-the-badge)](https://github.com/PalestineDevelopers/first_run)

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FPalestineDevelopers%2Ffirst_run%2Fbadge%3Fref%3Dmain&style=for-the-badge)](https://actions-badge.atrox.dev/PalestineDevelopers/first_run/goto?ref=main)

---

## Table Of Contents

* [Features](#features)
* [Getting started](#getting-started)
* [Usage](#usage)

---

## Features

* Check app is @ first run
* Check custom actions is @ first call

---

## Getting started

To start, import package

```dart
import 'package:palestine_first_run/palestine_first_run.dart';
```

---

## Usage

Ensure flutter framework is active

* Add this to the beginning of `main()`

```dart
// Make Sure Framework Is Ready
WidgetsFlutterBinding.ensureInitialized();
```

Just as easy as this

```dart
// First time (true), then (false)
final bool isFirstRun = await PalFirstRun.isFirstRun();
```

And for the custom calls

```dart
// First time (true), then (false)
final bool isFirstAPICall = await PalFirstRun.isFirstRun('call_api');
```
