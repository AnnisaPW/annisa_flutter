part of '../_index.dart';

class FbAuthRegistSubmit extends StatelessWidget {
  const FbAuthRegistSubmit({Key? key}) : super(key: key);

  FbAuthRegistCtrl get ct => Ctrl.fbAuthRegist;
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

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
