part of '_index.dart';

enum Flavor {
  prod,
  stg,
  dev,
  qa,
}

final fConfig = RM.injectFlavor(
  {
    Flavor.dev: () => FConfigDev(),
    Flavor.stg: () => FConfigStg(),
    Flavor.prod: () => FConfigProd(),
    Flavor.qa: () => FConfigQA(),
  },
);
