part of '../_index.dart';

class ProductEditName extends StatelessWidget {
  const ProductEditName({Key? key}) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxName.st.controller,
        focusNode: dt.rxName.st.focusNode,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => dt.focusScopeNode.nextFocus(),
        onChanged: (v) => v.isNotEmpty ? dt.rxIsChange.st = true : dt.rxIsChange.st = false,
        decoration: InputDecoration(
          hintText: 'Name of product',
          labelText: 'Name',
          errorText: dt.rxName.st.error,
        ),
      ),
    );
  }
}
