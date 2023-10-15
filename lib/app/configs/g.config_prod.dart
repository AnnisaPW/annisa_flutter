part of '_index.dart';

class FConfigProd implements FConfig {
  @override
  String get name => 'PROD';

  @override
  String get title => 'AnnisaFlutter';

  @override
  String get appName => 'AnnisaFlutter';

  @override
  IPersistStore get store => StoreSharedPreferences();
}
