part of '../_index.dart';

class FbAuthLoginButtons extends StatelessWidget {
  const FbAuthLoginButtons({Key? key}) : super(key: key);

  FbAuthLoginCtrl get ct => Ctrl.fbAuthLogin;
  FbAuthLoginData get dt => Data.fbAuthLogin.st;

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          const FbAuthLoginSubmit(),
          const SizedBoxH(10),
          const Divider(
            thickness: 2,
          ),
          const SizedBoxH(10),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              fixedSize: const Size.fromWidth(200),
            ),
            onPressed: () {
              ct.signInWithGoogle();
            },
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Image.asset('assets/images/g-logo.png'),
                  ),
                  const SizedBox(width: 10),
                  const Text('Sign in with Google'),
                ],
              ),
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              fixedSize: const Size.fromWidth(200),
            ),
            onPressed: () {
              ct.signInAnonymously();
            },
            child: const Text('Sign in Anonymously'),
          ),
          const SizedBoxH(20),
          TextButton(
            onPressed: () {
              nav.toReplacement(Routes.fbAuthRegist);
            },
            child: const Text("Don't have an account? Create"),
          ),
        ],
      ),
    );
  }
}
