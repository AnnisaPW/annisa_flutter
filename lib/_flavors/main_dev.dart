import 'package:annisa_flutter/app/_index.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../main.dart' as runner;

Future<void> main() async {
  RM.env = Flavor.dev;

  await inits();

  await runner.main();
}
