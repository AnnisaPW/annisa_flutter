part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  HomeCtrl get ct => Ctrl.home;
  HomeData get dt => Data.home.st;

  @override
  Widget build(BuildContext context) {
    Widget getUsername() {
      Widget widget = const Text('Anonymous');
      var user = dt.rxUser.st;
      if (user != null) {
        if (user.isAnonymous) {
          const Text('Anonymous');
        } else {
          widget = Text('${dt.rxUser.st?.email}');
        }
      }
      return widget;
    }

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      body: OnBuilder.all(
        listenTo: dt.rxUser,
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (_, __) => const Center(child: Text('Error')),
        onData: (data) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('you are logged in as'),
              const SizedBox(height: 10),
              getUsername(),
              const SizedBox(height: 5),
              dt.rxUser.st?.photoURL == null
                  ? const Text('No image')
                  : SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage('${dt.rxUser.st?.photoURL}'),
                      ),
                    ),
              dt.rxUser.isWaiting
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () => ct.signOut(),
                      child: const Text('sign out'),
                    ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {
                  ct.delete();
                },
                child: const Text('Delete Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
