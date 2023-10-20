part of '../_index.dart';

class ProductDetailAppbar extends StatelessWidget {
  const ProductDetailAppbar({Key? key}) : super(key: key);

  ProductDetailCtrl get ct => Ctrl.productDetail;
  ProductDetailData get dt => Data.productDetail.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
      actions: [
        IconButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: const Text('Confirmation'),
                  content: const Text('Are you sure to delete these items?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        nav.back();
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        nav.back();
                        ct.delete();
                      },
                      child: const Text(
                        'Delete',
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                );
              },
            );
          },
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
