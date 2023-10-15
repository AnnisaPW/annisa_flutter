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
}
