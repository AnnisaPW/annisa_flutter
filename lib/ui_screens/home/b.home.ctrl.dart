part of '_index.dart';

class HomeCtrl {
  HomeData get dt => Data.home.st;

  init() => logxx.i(HomeCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signOut() => Serv.auth.signOut();

  delete() => Serv.auth.deleteAccount();
}
