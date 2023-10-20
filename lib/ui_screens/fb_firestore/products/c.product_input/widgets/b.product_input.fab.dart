part of '../_index.dart';

class ProductInputFab extends StatelessWidget {
  const ProductInputFab({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.save),
      onPressed: () => RM.navigate.toCupertinoDialog(
        CupertinoAlertDialog(
          title: const Text('Confirmation'),
          content: const Text('Are you sure to create these items?'),
          actions: [
            TextButton(
              onPressed: () {
                nav.back();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {},
              // onPressed: () => ct.create(),
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.green),
              ),
            )
          ],
        ),
        postponeToNextFrame: true,
      ),
    );
  }
}
