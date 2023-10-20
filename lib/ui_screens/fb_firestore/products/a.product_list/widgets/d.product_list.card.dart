part of '../_index.dart';

class ProductListCard extends StatelessWidget {
  final Product product;
  const ProductListCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return OnBuilder.data(
      listenToMany: [dt.rxLoadMore, dt.rxProductList],
      builder: (data) => Card(
        child: OnReactive(
          () => ListTile(
            selected: product.id == dt.rxSelectedId.st,
            title: Text(product.name),
            subtitle: Text('Rp ${Fun.formatRupiah.format(product.price)}'),
            trailing: Text('${product.quantity}'),
            onTap: () {
              ct.select(product.id);
              logx.wtf('selected id: ${dt.rxSelectedId.st}');
              logx.wtf('id: ${product.id}');
            },
          ),
        ),
      ),
    );
  }
}
