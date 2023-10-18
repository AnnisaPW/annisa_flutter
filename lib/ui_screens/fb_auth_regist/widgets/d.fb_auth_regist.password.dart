part of '../_index.dart';

class FbAuthRegistPassword extends StatelessWidget {
  const FbAuthRegistPassword({Key? key}) : super(key: key);

  FbAuthRegistCtrl get ct => Ctrl.fbAuthRegist;
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxPassword.controller,
        focusNode: dt.rxPassword.focusNode,
        keyboardType: TextInputType.visiblePassword,
        obscureText: dt.rxIsObscurePassword.st,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => dt.focusScopeNode.unfocus(),
        decoration: InputDecoration(
          hintText: 'Input your password email',
          labelText: 'Password',
          errorText: dt.rxPassword.error,
          suffixIcon: OnReactive(
            () => IconButton(
              onPressed: () {
                ct.obscurePassword();
              },
              icon: dt.rxIsObscurePassword.st == true ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
            ),
          ),
        ),
      ),
    );
  }
}
