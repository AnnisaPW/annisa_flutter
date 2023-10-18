part of '_index.dart';

class AuthServ {
  AuthProv get pv => Prov.auth.st;

  init() {
    logxx.i(AuthServ, 'AuthServ init ...');
    pv.rxUser.subscription = x1FbAuth.st.instance.authStateChanges().listen(
          (event) => pv.rxUser.st = event,
        );
  }

  responseAuthState(User? user) {
    if (nav.routeData.location == '/fb_auth_login' || nav.routeData.location == '/fb_auth_regist') {
      if (user != null) {
        nav.toReplacement(Routes.home);
      }
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.fbAuthLogin);
      }
    }
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
