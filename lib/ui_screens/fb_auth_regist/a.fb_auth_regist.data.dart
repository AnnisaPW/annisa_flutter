part of '_index.dart';

class FbAuthRegistData {
  final rxTitle = 'FbAuthRegist'.inj();

  final rxInt = 0.inj();

  final rxUser = Prov.auth.st.rxUser;

  final focusScopeNode = FocusScopeNode();

  final rxIsObscurePassword = true.inj();

  final rxIsObscureRetypePassword = true.inj();

  final rxForm = RM.injectForm(
    submit: () async => Ctrl.fbAuthRegist.createUserWithEmailAndPassword(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxEmail = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isEmail,
      // Validate.isAlpha,
      // Validate.spaceNotAllowed,
      // Validate.minChars,
    ],
  );

  final rxPassword = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.alphaNumeric,
      Validate.spaceNotAllowed,
      Validate.minChars,
      Validate.pwdContain,
    ],
  );

  final rxRetypePassword = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.alphaNumeric,
      Validate.spaceNotAllowed,
      Validate.minChars,
      Validate.pwdContain,
      Validate.retypePassword,
    ],
  );
}
