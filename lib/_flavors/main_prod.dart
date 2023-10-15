import 'package:states_rebuilder/states_rebuilder.dart';

import '../app/_index.dart';

import '../main.dart' as runner;

Future<void> main() async {
  RM.env = Flavor.prod;

  await inits();

  await runner.main();
}
