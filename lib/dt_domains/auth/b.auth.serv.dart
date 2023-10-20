part of '_index.dart';

class AuthServ {
  AuthProv get pv => Prov.auth.st;

  init() {
    logxx.i(AuthServ, 'AuthServ init ...');
    pv.rxUser.subscription = x1FbAuth.st.instance.authStateChanges().listen(
          (event) => pv.rxUser.st = event,
        );
  }

  responseAuthState(User? user) async {
    if (nav.routeData.location == '/fb_auth_login' || nav.routeData.location == '/fb_auth_regist') {
      if (user != null) {
        // Fun.showOverlayLoading();
        // await Future.delayed(2.seconds).then((value) => nav.back()).then((value) => nav.toReplacement(Routes.home));
        nav.toReplacement(Routes.home);
      }
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.fbAuthLogin);
      }
    }
    // final location = nav.routeData.location;
    // final isInitRoute = (location == Routes.fbAuthLogin) || (location == '/fb_auth_regist');
    // if (!isInitRoute) {
    //   nav.toAndRemoveUntil(Routes.fbAuthLogin);
    // } else {
    //   logxx.wtf(AuthServ, 'set timer');
    //   pv.timer?.cancel();
    //   pv.timer = Timer(3.seconds, () => nav.toReplacement(Routes.home));
    //   // preventMultipleAsync(() => nav.toAndRemoveUntil(Routes.authSwitch));
    // }
  }

  close() => pv.rxUser.subscription?.cancel();

  createUserWithEmailAndPassword(String email, String password) {
    x1FbAuth.st.createUserWithEmailAndPassword(email, password);
  }

  signInWithEmailAndPassword(String email, String password) {
    x1FbAuth.st.signInWithEmailAndPassword(email, password);
  }

  signInWithGoogle() {
    x1FbAuth.st.signInWithGoogle();
  }

  signInAnonymously() {
    x1FbAuth.st.signInAnonymously();
  }

  signOut() {
    x1FbAuth.st.signOut();
  }

  deleteAccount() async {
    x1FbAuth.st.deleteAccount(pv.rxUser.st);
  }
}
