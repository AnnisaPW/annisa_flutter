part of '../_index.dart';

class FbAuthRegistRetypePassword extends StatelessWidget {
  const FbAuthRegistRetypePassword({Key? key}) : super(key: key);

  FbAuthRegistCtrl get ct => Ctrl.fbAuthRegist;
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxRetypePassword.controller,
        focusNode: dt.rxRetypePassword.focusNode,
        keyboardType: TextInputType.visiblePassword,
        obscureText: dt.rxIsObscureRetypePassword.st,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => dt.focusScopeNode.unfocus(),
        decoration: InputDecoration(
          hintText: 'Retype your password',
          labelText: 'Retype Password',
          errorText: dt.rxRetypePassword.error,
          suffixIcon: OnReactive(
            () => IconButton(
              onPressed: () {
                ct.obscureRetypePassword();
              },
              icon: dt.rxIsObscureRetypePassword.st == true
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
          ),
        ),
      ),
    );
  }
}
