part of '../_index.dart';

class ProductInputTextDirty extends StatelessWidget {
  const ProductInputTextDirty({
    super.key,
  });

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;
  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => dt.rxForm.isDirty
          ? const Center(
              child: Text('The form is changed but not submitted yet!'),
            )
          : const SizedBox.shrink(),
    );
  }
}
