part of '_index.dart';

class ProductServ {
  ProductProv get pv => Prov.product.st;
  init() => logxx.i(ProductServ, 'ProductServ init ...');

  refreshProducts() {
    pv.rxIsEnd.st = false;
    pv.rxProductList.st = [];
    pv.rxSelectedId.st = '';
    readProducts();
  }

  readProducts() {
    pv.rxLoadMore.stateAsync = Repo.product.st.readProducts(
      pv.rxProductList.st.isNotEmpty ? pv.rxProductList.st.last.createdAt : '9999-99-99 99:99:99.999',
    );
  }

  readProduct() {
    pv.rxProductFuture.stateAsync = Repo.product.st.readProduct();
  }

  setSelectedId(String id) {
    pv.rxSelectedId.refresh();
    pv.rxSelectedId.setState((s) => id);
  }

  initProducts() {
    pv.rxProductList.refresh();
    pv.rxSelectedId.refresh();

    readProducts();
  }

  addToList(List<Product> moreProduct) {
    pv.rxProductList.st = [...pv.rxProductList.st, ...moreProduct];
    if (moreProduct.length < pv.limit) {
      pv.rxIsEnd.st = true;
    }
  }

  // ---- ---- delete ---- ----

  Future<void> deleteAllProductDataAndImage() async {
    for (var element in pv.rxProductList.st) {
      pv.rxSelectedId.st = element.id;
      await deleteProduct(pv.rxSelectedId.st);
    }
    pv.rxIndex.setState((s) => 0);
    pv.rxProductList.setState((s) => s.clear());
  }

  deleteOneOfProduct() {
    pv.rxProductList.st = [...pv.rxProductList.st]..removeWhere((element) => element.id == pv.rxSelectedId.st);
  }

  Future<void> deleteAllProduct() {
    return Repo.product.st.deleteAllProduct();
  }

  Future<void> deleteProduct(String selectedId) {
    return Repo.product.st.deleteProduct(selectedId);
  }

  // ---- ---- create ---- ----

  Future<void> createProduct(Product product) {
    return Repo.product.st.createProduct(product);
  }

  // ---- ---- update ---- ----

  Future<void> updateProduct(Product product) {
    return Repo.product.st.updateProduct(product);
  }

  updateOneOfProductList(Product p) {
    pv.rxProductList.setState(
      (s) {
        final index = s.indexWhere((element) => element.id == pv.rxSelectedId.st);
        return s[index] = p;
      },
    );
  }
}
