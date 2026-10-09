import 'package:flutter/widgets.dart' show EdgeInsets;
import 'package:plate_alphabet/plate_alphabet.dart';
import 'package:plate_core/plate_core.dart';

import 'saint_vincent_and_the_grenadines_country.dart';

/// Where the ink sits, in plate units. One photograph (`woody1778a`, an old
/// pressed plate, aspect 4.09) was flattened to 440×108 and its ink runs read
/// off, then scaled to the 520×110 the article gives (x by 1.18, y by 1.02).
/// The photo's aspect is not the article's; the size is the article's.
///
/// Reference ink: `P` x 63–122, y 16–102; digits y 14–94. A box that tall
/// would need ~155 on a 110 plate, so every box is the full canvas height and
/// the ink lands near 60, about 70% of reference. That is the engine's limit,
/// not a measurement.
///
/// Centres (x): `P` 92; digits 213, 292, 371, 450 at an even pitch of 79
/// (the photo's glyph centres are 213, 301, 375, 450; the `1` is narrow).
abstract final class _Layout {
  static const double width = 520, height = 110;
  static const double letterCx = 92, letterWidth = 70;
  static const double digitFirstCx = 213, digitPitch = 79, digitWidth = 70;
}

/// The Vincentian plate: `A 1234`, one letter and four digits, off-white on
/// black. The article's other plates (reflective white front, yellow rear)
/// have no reference and are not implemented.
abstract final class SaintVincentAndTheGrenadinesPlates {
  static final PlateSpec private = PlateSpec(
    id: 'vc.private',
    country:
        SaintVincentAndTheGrenadinesCountry.saint_vincent_and_the_grenadines,
    canvasWidth: _Layout.width,
    canvasHeight: _Layout.height,
    panel: const PlatePanel(
      box: PlateBox(0, 0, 0, 0),
      padding: EdgeInsets.zero,
    ),
    noPanel: true,
    background: PlateSection.plain,
    slots: <PlateSlot>[
      PlateSlot(
        alphabet: SaintVincentAndTheGrenadinesAlphabets.letters,
        box: PlateBox(
          _Layout.letterCx - _Layout.letterWidth / 2,
          0,
          _Layout.letterWidth,
          _Layout.height,
        ),
      ),
      for (int i = 0; i < 4; i++)
        PlateSlot(
          alphabet: SaintVincentAndTheGrenadinesAlphabets.digits,
          box: PlateBox(
            _Layout.digitFirstCx +
                _Layout.digitPitch * i -
                _Layout.digitWidth / 2,
            0,
            _Layout.digitWidth,
            _Layout.height,
          ),
        ),
    ],
    textGroups: const <PlateTextGroup>[
      PlateTextGroup(<int>[0], key: 'letters'),
      PlateTextGroup(<int>[1, 2, 3, 4], key: 'digits'),
    ],
  );

  static List<PlateSpec> get all => <PlateSpec>[private];
}
