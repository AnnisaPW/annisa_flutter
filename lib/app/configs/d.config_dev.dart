part of '_index.dart';

class FConfigDev implements FConfig {
  @override
  String get name => 'DEV';

  @override
  String get title => 'AnnisaDev';

  @override
  String get appName => 'Annisa_Dev';

  @override
  IPersistStore get store => StoreHive();
}
