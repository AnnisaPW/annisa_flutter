part of '../_index.dart';

class ProductEditTextDirty extends StatelessWidget {
  const ProductEditTextDirty({
    super.key,
  });

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;
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
