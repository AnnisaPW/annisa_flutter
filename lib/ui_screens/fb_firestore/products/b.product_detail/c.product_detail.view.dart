part of '_index.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({Key? key}) : super(key: key);

  ProductDetailCtrl get ct => Ctrl.productDetail;
  ProductDetailData get dt => Data.productDetail.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductDetailAppbar(),
      ),
      floatingActionButton: const ProductDetailFab(),
      body: OnBuilder<Product?>.all(
        listenTo: dt.rxProductFuture,
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (e, s) => const Center(child: Text('Error')),
        onData: (data) => data == null
            ? const Center(child: Text('Data is empty'))
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data.id),
                    Text(data.name),
                    Text('Rp ${Fun.formatRupiah.format(data.price)}'),
                    Text(data.createdAt),
                    Text(data.updatedAt),
                  ],
                ),
              ),
      ),
    );
  }
}
