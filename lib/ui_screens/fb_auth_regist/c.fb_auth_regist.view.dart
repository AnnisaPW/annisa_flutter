part of '_index.dart';

class FbAuthRegistView extends StatelessWidget {
  const FbAuthRegistView({Key? key}) : super(key: key);

  FbAuthRegistCtrl get ct => Ctrl.fbAuthRegist;
  FbAuthRegistData get dt => Data.fbAuthRegist.st;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: FbAuthRegistAppbar(),
      ),
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
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: OnFormBuilder(
                      listenTo: dt.rxForm,
                      builder: () {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const FbAuthRegistEmail(),
                            const SizedBox(height: 10),
                            const FbAuthRegistPassword(),
                            const SizedBox(height: 10),
                            const FbAuthRegistRetypePassword(),
                            const SizedBox(height: 10),
                            dt.rxForm.isDirty
                                ? const Center(
                                    child: Text('The form is changed but not submitted yet!'),
                                  )
                                : const SizedBox.shrink(),
                            const SizedBox(height: 10),
                            const FbAuthRegistButtons()
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
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Container(
      //       constraints: const BoxConstraints(maxWidth: 500),
      //       child: KeyboardDismisser(
      //         gestures: const [GestureType.onTap, GestureType.onPanUpdateDownDirection],
      //         child: OnFormBuilder(
      //           listenTo: dt.rxForm,
      //           builder: () {
      //             return FocusScope(
      //               node: dt.focusScopeNode,
      //               child: Center(
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     const FbAuthRegistEmail(),
      //                     const SizedBox(height: 10),
      //                     const FbAuthRegistPassword(),
      //                     const SizedBox(height: 10),
      //                     dt.rxForm.isDirty
      //                         ? const Center(
      //                             child: Text('The form is changed but not submitted yet!'),
      //                           )
      //                         : const SizedBox.shrink(),
      //                     const SizedBox(height: 10),
      //                     const FbAuthRegistButtons()
      //                   ],
      //                 ),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
