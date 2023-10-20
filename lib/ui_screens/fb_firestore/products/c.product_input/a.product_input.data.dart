part of '_index.dart';

class ProductInputData {
  final rxTitle = 'ProductInput'.inj();

  final rxInt = 0.inj();

  final colId = Prov.product.st.colId;

  final products = RM.inject<List<Product>>(() => []);

  final rxIndex = Prov.product.st.rxIndex;

  final rxProductList = Prov.product.st.rxProductList;

  final focusScopeNode = FocusScopeNode();

  final rxForm = RM.injectForm(
    submit: () => Ctrl.productInput.createProduct(),
    autovalidateMode: AutovalidateMode.onUserInteraction,
  );

  final rxName = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.minChars,
    Validate.alphaNumericSpace,
  ]);

  final rxPrice = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.isNumeric,
    Validate.isNotZero,
  ]);

  final rxQuantity = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.isNumeric,
    Validate.isNotZero,
  ]);
}
