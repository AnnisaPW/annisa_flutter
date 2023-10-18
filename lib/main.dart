import 'dart:async';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/_index.dart';

FutureOr<void> main() async {
  runApp(
    DevicePreview(
      enabled: PlatformType.isLinux,
      storage: DevicePreviewStorage.preferences(),
      builder: (context) => const App(), //* Wrap your app
    ),
  );
}
