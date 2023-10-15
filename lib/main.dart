import 'dart:async';
import 'package:flutter/material.dart';
import 'package:annisa_flutter/app/_index.dart';

import 'package:device_preview/device_preview.dart';

FutureOr<void> main() async {
  // await inits();
  runApp(
    DevicePreview(
      enabled: false,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) => const App(), //* Wrap your app
    ),
  );
}
