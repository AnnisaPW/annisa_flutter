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

  @override
  String get apiTMDB => 'https://api.themoviedb.org';

  @override
  String get tokenTMDB => 'a603bb398cc5d799ec8d03ff2c95b7f4';
}
