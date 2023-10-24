part of '_index.dart';

class FConfigQA implements FConfig {
  @override
  String get name => 'QA';

  @override
  String get title => 'AnnisaQA';

  @override
  String get appName => 'Annisa_QA';

  @override
  IPersistStore get store => StoreFake();

  @override
  String get apiTMDB => '';

  @override
  String get tokenTMDB => '';
}
