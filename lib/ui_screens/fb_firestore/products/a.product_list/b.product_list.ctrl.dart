part of '_index.dart';

class ProductListCtrl {
  ProductListData get dt => Data.productList.st;

  init() => logxx.i(ProductListCtrl, '...');

  Future<void> refresh() async {
    Serv.product.refreshProducts();
  }

  deleteProducts() async {
    await Serv.product.deleteAllProduct();
    Prov.product.st.rxIndex.setState((s) => 0);
    Prov.product.st.rxProductList.setState((s) => s.clear());
    Future.delayed(800.milliseconds);
  }

  Future<void> loadMore() async {
    Serv.product.readProducts();
  }

  select(String id) {
    Serv.product.setSelectedId(id);
    nav.to(Routes.productDetail);
  }
}
