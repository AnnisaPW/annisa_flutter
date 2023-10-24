part of '../_index.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  HomeCtrl get ct => Ctrl.home;
  HomeData get dt => Data.home.st;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: OnReactive(() => Text(dt.rxTitle.st)),
      leading: _ct.getQueryW(context) < 750
          ? IconButton(
              tooltip: 'Profile',
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            )
          : const SizedBox.shrink(),
      actions: [
        OutlinedButton(
          onPressed: () {
            html.window.open('https://github.com/AnnisaPW/annisa_flutter', 'GitHub');
          },
          child: Row(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset('assets/images/github_logo.png'),
              ),
              const Text('GitHub'),
            ],
          ),
        )
      ],
    );
  }
}
