part of '../_index.dart';

class ProductInputQuantity extends StatelessWidget {
  const ProductInputQuantity({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxQuantity.controller,
        focusNode: dt.rxQuantity.focusNode,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        onEditingComplete: () => dt.focusScopeNode.unfocus(),
        decoration: InputDecoration(
          hintText: 'Quantity of product e.g. 100',
          labelText: 'Quantity',
          errorText: dt.rxQuantity.error,
        ),
      ),
    );
  }
}
