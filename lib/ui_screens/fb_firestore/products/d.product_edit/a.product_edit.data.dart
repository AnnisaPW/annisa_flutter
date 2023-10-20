part of '_index.dart';

class ProductEditData {
  final rxTitle = 'ProductEdit'.inj();

  final rxInt = 0.inj();

  final colId = Prov.product.st.colId;

  final rxSelectedId = Prov.product.st.rxSelectedId;

  final rxIsChange = false.inj();

  final focusScopeNode = FocusScopeNode();

  // final rxProductBackup = RM.inject<Product>(() => Product());

  // final rxProductBuffer = RM.inject<Product>(
  //   () => Product(),
  //   sideEffects: SideEffects(
  //     initState: () => Ctrl.productEdit.initProductBuffer(),
  //   ),
  // );

  final rxForm = RM.injectForm(
    submit: () async => await Ctrl.productEdit.updateProduct(),
    autovalidateMode: AutovalidateMode.always,
  );

  final rxName = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductFuture.st!.name,
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.alphaNumericSpace,
        Validate.minChars,
      ],
    ),
  );

  final rxPrice = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductFuture.st!.price.toString(),
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
        Validate.isNotZero,
      ],
    ),
  );

  final rxQuantity = RM.inject(
    () => RM.injectTextEditing(
      text: Prov.product.st.rxProductFuture.st!.quantity.toString(),
      validateOnTyping: true,
      validators: [
        Validate.isNotEmpty,
        Validate.isNumeric,
        Validate.isNotZero,
      ],
    ),
  );
}
