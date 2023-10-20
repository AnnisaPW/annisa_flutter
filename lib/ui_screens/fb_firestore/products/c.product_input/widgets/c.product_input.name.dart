part of '../_index.dart';

class ProductInputName extends StatelessWidget {
  const ProductInputName({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return OnFormBuilder(
      listenTo: dt.rxForm,
      builder: () => TextField(
        controller: dt.rxName.controller,
        focusNode: dt.rxName.focusNode,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        onEditingComplete: () => dt.focusScopeNode.nextFocus(),
        decoration: InputDecoration(
          hintText: 'Name of product',
          labelText: 'Name',
          errorText: dt.rxName.error,
        ),
      ),
    );
  }
}
