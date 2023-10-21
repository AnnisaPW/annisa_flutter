part of '../_index.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OnBuilder.all(
      listenTo: _dt.rxUser,
      onWaiting: () => const Center(child: CircularProgressIndicator()),
      onError: (_, __) => const Center(child: Text('Error')),
      onData: (data) => Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Firebase Authentication',
              textScaleFactor: 1.25,
            ),
            const SizedBox(height: 20),
            _dt.rxUser.st?.photoURL == null
                ? const Text('No image')
                : SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage('${_dt.rxUser.st?.photoURL}'),
                    ),
                  ),
            const SizedBox(height: 10),
            const Divider(thickness: 2),
            _dt.rxUser.st!.isAnonymous
                ? const SizedBox.shrink()
                : ListTile(title: const Text('Email Address'), subtitle: Text('${_dt.rxUser.st?.email}')),
            ListTile(title: const Text('Username'), subtitle: _ct.getUsername()),
            // getUsername(),
            const SizedBox(height: 10),

            _dt.rxUser.isWaiting
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () => _ct.signOut(),
                    child: const Text('sign out'),
                  ),
            const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                _ct.delete();
              },
              child: const Text('Delete Account'),
            ),
          ],
        ),
      ),
    );
  }
}
