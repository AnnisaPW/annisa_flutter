part of '../_index.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  nav.back();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ],
          ),
          const HomeProfile(),
        ],
      ),
    );
  }
}
