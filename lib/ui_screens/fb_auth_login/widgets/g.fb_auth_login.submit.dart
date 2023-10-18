part of '../_index.dart';

class FbAuthLoginSubmit extends StatelessWidget {
  const FbAuthLoginSubmit({super.key});

  FbAuthLoginCtrl get ct => Ctrl.fbAuthLogin;
  FbAuthLoginData get dt => Data.fbAuthLogin.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => Center(
        child: OnFormSubmissionBuilder(
          listenTo: dt.rxForm,
          onSubmitting: () => const CircularProgressIndicator(),
          child: ElevatedButton(
            onPressed: dt.rxForm.isDirty && dt.rxForm.isValid ? () => ct.submit() : null,
            child: const Text('submit'),
          ),
        ),
      ),
    );
  }
}
