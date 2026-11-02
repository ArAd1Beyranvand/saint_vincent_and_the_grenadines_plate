import 'package:plate_core/plate_core.dart';

// TODO(py): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(ts): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
// TODO(kt): [D4-code] hand-port; reason strings are the contract, keep them byte-identical.
/// Judges a Vincentian plate: one letter and four digits (`A 1234`).
/// Reports, never bars a keystroke.
class SaintVincentAndTheGrenadinesValidator extends GatedPlateValidator {
  const SaintVincentAndTheGrenadinesValidator();

  @override
  String get gateGroup => 'digits';

  static const String reason = 'A plate is one letter and four digits.';

  // TODO(py): [H9] Python re: \d/\w match Unicode; keep explicit [0-9]/[A-Z] classes (or re.ASCII).
  // TODO(ts): [H9] same flavour as Dart; port as is, cover accept/reject in the vectors (D9).
  // TODO(kt): [H9] Regex engine differs per target (JVM/JS/Native): keep to portable syntax.
  static final RegExp _letter = RegExp(r'^[A-Z]$');

  @override
  PlateValidation judge(PlateEntry entry) =>
      isDigitsOfLength(entry.group('digits'), 4) &&
          _letter.hasMatch(entry.group('letters'))
      ? const PlateValidation.valid()
      : const PlateValidation.invalid(reason);
}
