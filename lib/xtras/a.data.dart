part of '_index.dart';

abstract class Data {
  static Injected<CobaSatuData> get cobaSatu => _cobaSatuData;
  static Injected<CobaDuaData> get cobaDua => _cobaDuaData;
  static Injected<CobaTigaData> get cobaTiga => _cobaTigaData;
  static Injected<FbAuthLoginData> get fbAuthLogin => _fbAuthLoginData;
  static Injected<FbAuthRegistData> get fbAuthRegist => _fbAuthRegistData;
  static Injected<HomeData> get home => _homeData;
}

final _cobaSatuData = RM1.inj(CobaSatuData(), Ctrl.cobaSatu.init);
final _cobaDuaData = RM1.inj(CobaDuaData(), Ctrl.cobaDua.init);
final _cobaTigaData = RM1.inj(CobaTigaData(), Ctrl.cobaTiga.init);
final _fbAuthLoginData = RM1.inj(FbAuthLoginData(), Ctrl.fbAuthLogin.init);
final _fbAuthRegistData = RM1.inj(FbAuthRegistData(), Ctrl.fbAuthRegist.init);
final _homeData = RM1.inj(HomeData(), Ctrl.home.init);
