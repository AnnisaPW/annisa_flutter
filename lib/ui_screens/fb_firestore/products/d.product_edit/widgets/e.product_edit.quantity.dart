part of '../_index.dart';

class ProductEditQuantity extends StatelessWidget {
  const ProductEditQuantity({Key? key}) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxQuantity.st.controller,
        focusNode: dt.rxQuantity.st.focusNode,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        onChanged: (v) => v.isNotEmpty ? dt.rxIsChange.st = true : dt.rxIsChange.st = false,
        onEditingComplete: () => dt.focusScopeNode.unfocus(),
        decoration: InputDecoration(
          hintText: 'Quantity of product e.g. 100',
          labelText: 'Quantity',
          errorText: dt.rxQuantity.st.error,
        ),
      ),
    );
  }
}
