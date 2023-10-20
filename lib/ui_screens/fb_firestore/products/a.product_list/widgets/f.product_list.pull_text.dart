part of '../_index.dart';

class ProductListPullText extends StatelessWidget {
  const ProductListPullText({Key? key}) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 25,
      child: Center(
        child: Text(
          'pull to refresh',
          textScaleFactor: 0.8,
        ),
      ),
    );
  }
}
