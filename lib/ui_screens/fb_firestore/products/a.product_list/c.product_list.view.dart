part of '_index.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key}) : super(key: key);

  ProductListCtrl get ct => Ctrl.productList;
  ProductListData get dt => Data.productList.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductListAppbar(),
      ),
      floatingActionButton: const ProductListFab(),
      body: OnBuilder<List<Product>>.all(
        listenToMany: [dt.rxLoadMore, dt.rxProductList],
        onError: (e, s) => const Center(child: Text('error')),
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onData: (data) => dt.rxProductList.st.isEmpty
            ? const Center(child: Text('Data is empty'))
            : ListView(
                children: [
                  for (var item in dt.rxProductList.st)
                    ProductListCard(
                      product: item,
                    ),
                  // const ProductListLoadmore(),
                  // dt.rxLoadMore.rebuild.onOrElse(
                  //   onWaiting: () => const CircularProgressIndicator(),
                  //   orElse: (data) => const ProductListLoadmore(),
                  // ),
                  dt.rxIsEnd.st
                      ? const Center(child: Text('-- end of list --'))
                      : Center(
                          child: OutlinedButton(
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
