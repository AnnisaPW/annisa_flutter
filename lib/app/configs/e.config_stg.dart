part of '_index.dart';

class FConfigStg implements FConfig {
  @override
  String get name => 'STG';

  @override
  String get title => 'AnnisaStg';

  @override
  String get appName => 'Annisa_Stg';

  @override
  IPersistStore get store => StoreHive();

  @override
  String get apiTMDB => 'https://api.themoviedb.org';

  @override
  String get tokenTMDB => 'a603bb398cc5d799ec8d03ff2c95b7f4';
}
