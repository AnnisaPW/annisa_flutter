part of '_index.dart';

class ProductInputView extends StatelessWidget {
  const ProductInputView({Key? key}) : super(key: key);

  ProductInputCtrl get ct => Ctrl.productInput;
  ProductInputData get dt => Data.productInput.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: ProductInputAppbar(),
      ),
      // floatingActionButton: const ProductInputFab(),
      body: KeyboardDismisser(
        gestures: const [
          GestureType.onTap,
          GestureType.onPanUpdateDownDirection,
        ],
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: OnFormBuilder(
                      listenTo: dt.rxForm,
                      builder: () {
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBoxH(5),
                            ProductInputName(),
                            SizedBoxH(10),
                            ProductInputPrice(),
                            SizedBoxH(10),
                            ProductInputQuantity(),
                            SizedBoxH(10),
                            ProductInputButton(),
                            SizedBoxH(10),
                            ProductInputTextDirty(),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // body: KeyboardDismisser(
      //   gestures: const [GestureType.onTap, GestureType.onPanUpdateDownDirection],
      //   child: Center(
      //     child: OnFormBuilder(
      //       listenTo: dt.rxForm,
      //       builder: () {
      //         return FocusScope(
      //           node: dt.focusScopeNode,
      //           child: ListView(
      //             padding: const EdgeInsets.all(10),
      //             children: const [
      //               SizedBoxH(5),
      //               ProductInputName(),
      //               SizedBoxH(10),
      //               ProductInputPrice(),
      //               SizedBoxH(10),
      //               ProductInputQuantity(),
      //               SizedBoxH(10),
      //               ProductInputButton(),
      //               SizedBoxH(10),
      //               ProductInputTextDirty(),
      //             ],
      //           ),
      //         );
      //       },
      //     ),
      //   ),
      // ),
      // body: OnReactive(
      //   () => SingleChildScrollView(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const ProductInputButton(),
      //         for (var i in dt.products.st)
      //           Card(
      //             child: ListTile(
      //               title: Text(i.name),
      //               subtitle: Text('${i.price}'),

      //             ),
      //           )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
