part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: HomeAppbar(),
      ),
      drawerEnableOpenDragGesture: false,
      drawer: const Drawer(
        child: HomeProfile(),
      ),
      body: Row(
        children: [
          _ct.getQueryW(context) < 750
              ? const SizedBox.shrink()
              : Container(
                  width: 300,
                  height: double.infinity,
                  color: Colors.black54.withOpacity(0.2),
                  // child: const HomeProfile(),
                  child: const HomeProfile(),
                ),
          const HomeContent(),
        ],
      ),
    );
  }
}
