part of '../_index.dart';

class FbAuthLoginEmail extends StatelessWidget {
  const FbAuthLoginEmail({Key? key}) : super(key: key);

  FbAuthLoginCtrl get ct => Ctrl.fbAuthLogin;
  FbAuthLoginData get dt => Data.fbAuthLogin.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxEmail.controller,
        focusNode: dt.rxEmail.focusNode,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => dt.focusScopeNode.nextFocus(),
        decoration: InputDecoration(
          hintText: 'email@example.com',
          labelText: 'Email',
          errorText: dt.rxEmail.error,
        ),
      ),
    );
  }
}
