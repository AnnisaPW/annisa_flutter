part of '_index.dart';

class FbAuthRegistCtrl {
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

  init() => logxx.i(FbAuthRegistCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  obscurePassword() {
    if (dt.rxIsObscurePassword.st == true) {
      dt.rxIsObscurePassword.st = false;
    } else {
      dt.rxIsObscurePassword.st = true;
    }
  }

  obscureRetypePassword() {
    if (dt.rxIsObscureRetypePassword.st == true) {
      dt.rxIsObscureRetypePassword.st = false;
    } else {
      dt.rxIsObscureRetypePassword.st = true;
    }
  }

  submit() => dt.rxForm.submit();

  createUserWithEmailAndPassword() async {
    Serv.auth.createUserWithEmailAndPassword(
      dt.rxEmail.value,
      dt.rxPassword.value,
    );
    await Future.delayed(400.milliseconds);
  }
}
