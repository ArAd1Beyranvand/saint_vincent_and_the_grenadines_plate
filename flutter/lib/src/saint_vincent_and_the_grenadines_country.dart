// ignore_for_file: constant_identifier_names
import 'package:plate_core/plate_core.dart';

import 'saint_vincent_and_the_grenadines_colors.dart';

/// The plate has no band, flag or caption, so only the code is meaningful.
abstract final class SaintVincentAndTheGrenadinesCountry {
  static const PlateCountry saint_vincent_and_the_grenadines = PlateCountry(
    code: 'vc',
    captionLines: <String>[],
    panelColor: SaintVincentAndTheGrenadinesColors.field,
    panelTextColor: SaintVincentAndTheGrenadinesColors.ink,
  );
}
