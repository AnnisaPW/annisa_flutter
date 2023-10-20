part of '../_index.dart';

class ProductDetailCharlie extends StatelessWidget {
  const ProductDetailCharlie({Key? key}) : super(key: key);

  ProductDetailCtrl get ct => Ctrl.productDetail;
  ProductDetailData get dt => Data.productDetail.st;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Random().nextInt(100).toString()),
        OnReactive(() => Text('${dt.rxInt.st}')),
      ],
    );
  }
}
