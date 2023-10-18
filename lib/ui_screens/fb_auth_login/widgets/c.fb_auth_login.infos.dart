part of '../_index.dart';

class FbAuthLoginInfos extends StatelessWidget {
  const FbAuthLoginInfos({Key? key}) : super(key: key);

  FbAuthLoginCtrl get ct => Ctrl.fbAuthLogin;
  FbAuthLoginData get dt => Data.fbAuthLogin.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () =>
          dt.rxUser.st == null && dt.rxForm.isDirty ? const Text('you are not logged in yet') : const SizedBox.shrink(),
    );
  }
}
