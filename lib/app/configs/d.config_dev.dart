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

  @override
  String get apiTMDB => 'https://api.themoviedb.org';

  @override
  String get tokenTMDB => 'a603bb398cc5d799ec8d03ff2c95b7f4';
}
