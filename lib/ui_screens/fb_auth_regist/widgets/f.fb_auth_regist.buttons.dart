part of '../_index.dart';

class FbAuthRegistButtons extends StatelessWidget {
  const FbAuthRegistButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const FbAuthRegistSubmit(),
        TextButton(
          onPressed: () {
            nav.toReplacement(Routes.fbAuthLogin);
          },
          child: const Text("Do you already have an account? Login"),
        ),
      ],
    );
  }
}
