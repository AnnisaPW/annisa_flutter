part of '_index.dart';

class ProductDetailCtrl {
  ProductDetailData get dt => Data.productDetail.st;

  init() => logxx.i(ProductDetailCtrl, '...');

  action() => dt.rxInt.setState((s) => s + 1);

  delete() async {
    RM.navigate.toDialog(
      const Center(child: CircularProgressIndicator()),
      barrierDismissible: false,
      barrierColor: Colors.black54,
    );
    await Serv.product.deleteProduct('${dt.rxProductFuture.st?.id}');
    await Serv.product.deleteOneOfProduct();
    if (dt.rxProductlist.st.isEmpty) {
      dt.rxIndex.setState((s) => 0);
    }
    RM.navigate.back();
    RM.navigate.back();
  }
}
