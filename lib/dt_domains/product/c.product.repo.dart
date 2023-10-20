part of '_index.dart';

class ProductRepo {
  Future<List<Product>> readProducts(String lastCreateTime) async {
    final result = await x1FbFirestore.readCollection(
      colId: Prov.product.st.colId,
      limit: Prov.product.st.limit,
      // limit: 100,
      lastCreateTime: lastCreateTime,
    );

    List<Product> products = [];
    for (var i in result.docs) {
      products.add(Product.fromMap(i.data()));
    }
    return products;
  }

  Future<Product> readProduct() async {
    final result = await x1FbFirestore.readDocument(
      colId: Prov.product.st.colId,
      docId: Prov.product.st.rxSelectedId.st,
    );
    return Product.fromMap(result.data() ?? {});
  }

  // ---- ---- delete ---- ----

  Future<void> deleteAllProduct() async {
    await x1FbFirestore.deleteAllDocument(colId: Prov.product.st.colId);
  }

  Future<void> deleteProduct(String id) async {
    await x1FbFirestore.deleteDocument(
      colId: Prov.product.st.colId,
      docId: Prov.product.st.rxSelectedId.st,
    );
  }

  // ---- ---- create ---- ----

  Future<void> createProduct(Product product) async {
    await x1FbFirestore.createDocument(
      colId: Prov.product.st.colId,
      docId: product.id,
      data: product.toMap(),
    );
  }

  // ---- ---- update ---- ----

  Future<void> updateProduct(Product product) async {
    await x1FbFirestore.updateDocument(
      colId: Prov.product.st.colId,
      docId: Prov.product.st.rxSelectedId.st,
      data: product.toMap(),
    );
  }
}
