part of '_index.dart';

abstract class Serv {
  static ProductServ get product => ProductServ();
  static AuthServ get auth => AuthServ();
  static MovieServ get movie => MovieServ();
  // static ConnServ get conn => ConnServ();
  // static DummyServ get dummy => DummyServ();
  // static UserxServ get userx => UserxServ();
  // static FcmServ get fcm => FcmServ();
  // static ChatServ get chat => ChatServ();
}
