part of '../_index.dart';

class ProductEditPrice extends StatelessWidget {
  const ProductEditPrice({Key? key}) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxPrice.st.controller,
        focusNode: dt.rxPrice.st.focusNode,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        onChanged: (v) => v.isNotEmpty ? dt.rxIsChange.st = true : dt.rxIsChange.st = false,
        onEditingComplete: () => dt.focusScopeNode.nextFocus(),
        decoration: InputDecoration(
          hintText: 'e.g. 10000',
          labelText: 'Price',
          errorText: dt.rxPrice.st.error,
        ),
      ),
    );
  }
}
