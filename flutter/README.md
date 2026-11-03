FREE PALESTINE 🇮🇷🇵🇸 پاینده ایران

GO VEGAN 🌱

==================================

From the mighty people of Iran to the resilient people of Saint Vincent and the Grenadines to view examples:

https://platexample.ir/#/discover/saintvincentandthegrenadines:flutter

# saint_vincent_and_the_grenadines_plate

Saint Vincent and the Grenadines's licence plates for the plate_core library — the one letter, four digit plate, off-white on black, with an advisory validator.

## Languages

| Language | Folder | Example |
| --- | --- | --- |
| Flutter / Dart | [`flutter/`](https://github.com/ArAd1Beyranvand/saint_vincent_and_the_grenadines_plate/tree/main/flutter) | [platexample](https://platexample.ir/#/discover/saintvincentandthegrenadines:flutter) |
| Kotlin | [`kotlin/`](https://github.com/ArAd1Beyranvand/saint_vincent_and_the_grenadines_plate/tree/main/kotlin) | [platexample](https://platexample.ir/#/discover/saintvincentandthegrenadines:kotlin) |
| Python | [`python/`](https://github.com/ArAd1Beyranvand/saint_vincent_and_the_grenadines_plate/tree/main/python) | [platexample](https://platexample.ir/#/discover/saintvincentandthegrenadines:python) |
| TypeScript | [`typescript/`](https://github.com/ArAd1Beyranvand/saint_vincent_and_the_grenadines_plate/tree/main/typescript) | [platexample](https://platexample.ir/#/discover/saintvincentandthegrenadines:typescript) |

## Quick start

### Install

```yaml
dependencies:
  plate_core: ^0.12.0
  saint_vincent_and_the_grenadines_plate: ^0.1.0
```

### Use

```dart
import 'package:plate_core/plate_core.dart';
import 'package:saint_vincent_and_the_grenadines_plate/saint_vincent_and_the_grenadines_plate.dart';

PlateCanvas(
  spec: SaintVincentAndTheGrenadinesPlates.private,
  theme: SaintVincentAndTheGrenadinesThemes.private,
  validator: const SaintVincentAndTheGrenadinesValidator(),
  autoValidate: true,
  onChooseCharacter: noCharacterChooser,
);
```

## Specs

Each spec is one plate layout.

- `SaintVincentAndTheGrenadinesPlates.private` — id `vc.private`

## Themes

- `SaintVincentAndTheGrenadinesThemes.private`

## Change it

`PlateCanvas` takes `spec:` (an entry of `SaintVincentAndTheGrenadinesPlates`) and `theme:` (an entry of `SaintVincentAndTheGrenadinesThemes`). Set `validator:` to `SaintVincentAndTheGrenadinesValidator()` and `autoValidate: true` to show validation hints.

## Also included

- `SaintVincentAndTheGrenadinesCountry` — the country panel.
- `SaintVincentAndTheGrenadinesValidator` — the plate validator.

## Plates

The Vincentian plate: `A 1234`, one letter and four digits, off-white on
black. The article's other plates (reflective white front, yellow rear)
have no reference and are not implemented.

## Part of plate

Painted by [`plate_core`](https://pub.dev/packages/plate_core); alphabets shared through [`plate_alphabet`](https://pub.dev/packages/plate_alphabet); optional character picker in [`plate_keypad`](https://pub.dev/packages/plate_keypad).

## License

See [LICENSE](https://github.com/ArAd1Beyranvand/saint_vincent_and_the_grenadines_plate/blob/main/LICENSE).
