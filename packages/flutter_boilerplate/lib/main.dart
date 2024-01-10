import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/application/apps/apps.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}
