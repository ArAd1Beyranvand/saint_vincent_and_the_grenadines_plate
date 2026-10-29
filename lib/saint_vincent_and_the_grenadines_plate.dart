/// Saint Vincent and the Grenadines licence plates for `plate_core`.
library;

// TODO(py): [D5] one module `plates.countries.saint_vincent_and_the_grenadines`; assets via importlib.resources.
// TODO(ts): [D5] one subpath export `./countries/saint_vincent_and_the_grenadines`; tree-shakable.
// TODO(kt): [D5] package `countries.saint_vincent_and_the_grenadines` in the countries module.
export 'src/saint_vincent_and_the_grenadines_colors.dart';
export 'src/saint_vincent_and_the_grenadines_country.dart';
export 'src/saint_vincent_and_the_grenadines_plates.dart';
export 'src/saint_vincent_and_the_grenadines_themes.dart';
export 'src/saint_vincent_and_the_grenadines_validators.dart';
export 'package:plate_alphabet/plate_alphabet.dart'
    show SaintVincentAndTheGrenadinesAlphabets;
