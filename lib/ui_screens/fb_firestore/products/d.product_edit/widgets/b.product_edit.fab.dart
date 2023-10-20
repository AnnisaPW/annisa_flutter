part of '../_index.dart';

class ProductEditFab extends StatelessWidget {
  const ProductEditFab({Key? key}) : super(key: key);

  ProductEditCtrl get ct => Ctrl.productEdit;
  ProductEditData get dt => Data.productEdit.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => RM.navigate.toCupertinoDialog(
        CupertinoAlertDialog(
          title: const Text('Confirmation'),
          content: const Text('Are you sure to update this item?'),
          actions: [
            TextButton(
              onPressed: () {
                nav.back();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => ct.submit(),
              child: const Text(
                'OK',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
        postponeToNextFrame: true,
      ),
    );
  }
}
