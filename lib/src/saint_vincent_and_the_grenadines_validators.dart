import 'package:plate_core/plate_core.dart';

/// Judges a Vincentian plate: one letter and four digits (`A 1234`).
/// Reports, never bars a keystroke.
class SaintVincentAndTheGrenadinesValidator extends GatedPlateValidator {
  const SaintVincentAndTheGrenadinesValidator();

  @override
  String get gateGroup => 'digits';

  static const String reason = 'A plate is one letter and four digits.';

  static final RegExp _letter = RegExp(r'^[A-Z]$');

  @override
  PlateValidation judge(PlateEntry entry) =>
      isDigitsOfLength(entry.group('digits'), 4) && _letter.hasMatch(entry.group('letters'))
      ? const PlateValidation.valid()
      : const PlateValidation.invalid(reason);
}
