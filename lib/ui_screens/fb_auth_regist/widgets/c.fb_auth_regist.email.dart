part of '../_index.dart';

class FbAuthRegistEmail extends StatelessWidget {
  const FbAuthRegistEmail({Key? key}) : super(key: key);

  FbAuthRegistCtrl get ct => Ctrl.fbAuthRegist;
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxEmail.controller,
        focusNode: dt.rxEmail.focusNode,
        keyboardType: TextInputType.name,
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
