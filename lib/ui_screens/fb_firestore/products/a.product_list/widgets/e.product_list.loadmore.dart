part of '../_index.dart';

class ProductListLoadmore extends StatelessWidget {
  const ProductListLoadmore({Key? key}) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBuilder<List<Product>>.all(
              listenTo: dt.rxLoadMore,
              onWaiting: () => const CircularProgressIndicator(),
              onError: (_, __) => const Text('error'),
              onData: (_) => dt.rxIsEnd.st
                  ? const Text('... end of list ...')
                  : OutlinedButton(
                      child: const Text('load more'),
                      onPressed: () => ct.loadMore(),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
