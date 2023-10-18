part of '_index.dart';

class FbAuthLoginCtrl {
  FbAuthLoginData get dt => Data.fbAuthLogin.st;

  init() => logxx.i(FbAuthLoginCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  signInWithGoogle() => Serv.auth.signInWithGoogle();

  submit() => dt.rxForm.submit();

  obscurePassword() {
    if (dt.rxIsObscurePassword.st == true) {
      dt.rxIsObscurePassword.st = false;
    } else {
      dt.rxIsObscurePassword.st = true;
    }
  }

  signInWithEmailAndPassword() async {
    Serv.auth.signInWithEmailAndPassword(
      dt.rxEmail.value,
      dt.rxPassword.value,
    );
    await Future.delayed(400.milliseconds);
  }

  signInAnonymously() {
    Serv.auth.signInAnonymously();
  }
}
