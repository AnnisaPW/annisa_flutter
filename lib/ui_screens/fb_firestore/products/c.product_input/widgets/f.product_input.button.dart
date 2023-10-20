part of '../_index.dart';

class ProductInputButton extends StatelessWidget {
  const ProductInputButton({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

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
