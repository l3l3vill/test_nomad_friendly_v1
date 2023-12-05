import 'package:flutter/material.dart';
import 'package:nomad_friendly_app/app.dart';

import 'locator.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

