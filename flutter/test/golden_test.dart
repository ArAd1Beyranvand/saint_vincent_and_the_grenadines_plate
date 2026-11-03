import 'package:flutter_test/flutter_test.dart';
import 'package:plate_core/plate_core.dart';
import 'package:plate_core/testing.dart';
import 'package:saint_vincent_and_the_grenadines_plate/saint_vincent_and_the_grenadines_plate.dart';

void main() {
  plateGoldens(
    'vc',
    SaintVincentAndTheGrenadinesCountry.saint_vincent_and_the_grenadines,
    <String, PlateGoldenCase>{
      'private': (
        SaintVincentAndTheGrenadinesPlates.private,
        SaintVincentAndTheGrenadinesThemes.private,
        'P 2401',
      ),
    },
  );

  test('the digits are one four-digit field', () {
    final PlateSpec spec = SaintVincentAndTheGrenadinesPlates.private;
    expect(spec.slots.map((PlateSlot s) => s.length), <int>[1, 4]);
    PlateController c = PlateController.fromValues(spec, ['P', '240']);
    expect(c.isCompleted, isFalse);
    c.dispose();
    c = PlateController.fromValues(spec, ['P', '2401']);
    expect(c.isCompleted, isTrue);
    c.dispose();
  });
}
