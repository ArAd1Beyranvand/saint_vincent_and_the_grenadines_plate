import 'package:flutter/widgets.dart';
import 'package:plate_core/plate_core.dart';
import 'package:saint_vincent_and_the_grenadines_plate/saint_vincent_and_the_grenadines_plate.dart';

void main() => runApp(
  PlateExampleApp(
    spec: SaintVincentAndTheGrenadinesPlates.private,
    theme: SaintVincentAndTheGrenadinesThemes.private,
  ),
);
