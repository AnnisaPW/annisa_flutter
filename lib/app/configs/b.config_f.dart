part of '_index.dart';

abstract class FConfig {
  String get appName;
  String get name;
  String get title;
  IPersistStore get store;
  String get apiTMDB;
  String get tokenTMDB;
}
