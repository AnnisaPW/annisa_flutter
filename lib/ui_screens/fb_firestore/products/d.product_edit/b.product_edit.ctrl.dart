part of '_index.dart';

class ProductEditCtrl {
  ProductEditData get dt => Data.productEdit.st;

  init() => logxx.i(ProductEditCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submit() => dt.rxForm.submit();

  Future<void> updateProduct() async {
    final p = Product(
      id: dt.rxSelectedId.st,
      name: dt.rxName.st.value,
      price: int.parse(dt.rxPrice.st.value),
      quantity: int.parse(dt.rxQuantity.st.value),
      createdAt: Prov.product.st.rxProductFuture.st!.createdAt,
      updatedAt: DateTime.now().toString(),
    );

    try {
      await Serv.product.updateProduct(p);
      Serv.product.readProduct();
      Serv.product.updateOneOfProductList(p);
      dt.rxSelectedId.st = '';
      Ctrl.productList.refresh();
      Future.delayed(400.milliseconds);
      RM.navigate.forceBack();
    } catch (e) {
      Fun.handleException(e);
    }
  }
}
