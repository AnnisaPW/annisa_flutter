part of '_index.dart';

class ProductInputCtrl {
  ProductInputData get dt => Data.productInput.st;

  init() => logxx.i(ProductInputCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  submit() => dt.rxForm.submit();

  createProduct() async {
    final product = Product(
      id: UniqueKey().toString().substring(2, 7),
      createdAt: DateTime.now().toString(),
      name: dt.rxName.value,
      price: int.parse(dt.rxPrice.value),
      quantity: int.parse(dt.rxQuantity.value),
    );
    dt.rxIndex.setState((s) => s + 1);
    dt.products.st = [...dt.products.st]..insert(0, product);
    for (var p in dt.products.st) {
      await Serv.product.createProduct(p);

      dt.rxProductList.st = [...dt.rxProductList.st]..insert(0, p);
    }

    await Future.delayed(400.milliseconds);
    RM.navigate.forceBack();
  }
}
