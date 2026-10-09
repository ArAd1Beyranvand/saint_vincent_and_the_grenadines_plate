// ignore_for_file: constant_identifier_names
import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';

/// Saint Vincent and the Grenadines as a `PlateCountry`. The plate has no
/// band, flag or caption, so only the code is meaningful.
abstract final class SaintVincentAndTheGrenadinesCountry {
  static const PlateCountry saint_vincent_and_the_grenadines = PlateCountry(
    code: 'vc',
    captionLines: <String>[],
    panelColor: Color(0xFF1D1718),
    panelTextColor: Color(0xFFBEAB8A),
  );
}
