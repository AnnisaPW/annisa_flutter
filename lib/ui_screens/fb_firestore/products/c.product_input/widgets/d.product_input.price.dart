part of '../_index.dart';

class ProductInputPrice extends StatelessWidget {
  const ProductInputPrice({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxPrice.controller,
        focusNode: dt.rxPrice.focusNode,
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => dt.focusScopeNode.nextFocus(),
        decoration: InputDecoration(
          hintText: 'e.g. 10000',
          labelText: 'Price',
          errorText: dt.rxPrice.error,
        ),
      ),
    );
  }
}
