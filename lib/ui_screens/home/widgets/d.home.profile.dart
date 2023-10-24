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
      onData: (data) => _dt.rxUser.st == null
          ? const Text('no user')
          : Column(
              children: [
                Container(
                  constraints: const BoxConstraints(maxHeight: 50),
                  child: _ct.getQueryW(context) < 750
                      ? Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                              onPressed: () {
                                nav.back();
                              },
                              icon: const Icon(Icons.close)),
                        )
                      : const SizedBox.shrink(),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
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
                                      backgroundImage: NetworkImage(
                                        '${_dt.rxUser.st?.photoURL}',
                                        scale: 1,
                                      ),
                                    ),
                                  ),
                            const SizedBox(height: 10),
                            const Divider(thickness: 2),
                            _dt.rxUser.st!.isAnonymous
                                ? const SizedBox.shrink()
                                : ListTile(
                                    title: const Text(
                                      'Email Address',
                                      textAlign: TextAlign.center,
                                    ),
                                    subtitle: Text(
                                      '${_dt.rxUser.st?.email}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                            ListTile(
                              title: const Text(
                                'Username',
                                textAlign: TextAlign.center,
                              ),
                              subtitle: _ct.getUsername(),
                            ),
                            _dt.rxUser.isWaiting
                                ? const CircularProgressIndicator()
                                : OutlinedButton(
                                    onPressed: () => _ct.signOut(),
                                    child: const Text('sign out'),
                                  ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  constraints: const BoxConstraints(maxHeight: 80),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          _ct.showConfirmDeleteAccount();
                        },
                        child: const Text(
                          'Delete Account',
                        ),
                      ),
                    ],
                  ),
                  // child:
                ),
              ],
            ),
    );
  }
}
