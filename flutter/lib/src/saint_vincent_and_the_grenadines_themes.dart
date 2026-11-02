import 'package:plate_core/plate_core.dart';

import 'saint_vincent_and_the_grenadines_colors.dart';

/// Off-white ink on black. The photographed plate has no frame line, so the
/// border is zero.
abstract final class SaintVincentAndTheGrenadinesThemes {
  static final PlateTheme private = PlateTheme.monochrome(
    field: SaintVincentAndTheGrenadinesColors.field,
    ink: SaintVincentAndTheGrenadinesColors.ink,
    inactive: SaintVincentAndTheGrenadinesColors.inactive,
    borderWidthRatio: 0,
    plateRadiusRatio: 0.03,
  );
}
