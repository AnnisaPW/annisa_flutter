part of '_index.dart';

class ProductDetailData {
  final rxTitle = 'ProductDetail'.inj();

  final rxInt = 0.inj();

  final rxProductFuture = Prov.product.st.rxProductFuture;

  final rxProductlist = Prov.product.st.rxProductList;

  final rxIndex = Prov.product.st.rxIndex;
}
