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
      drawer: const HomeDrawer(),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('Firebase'),
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: SizedBox(
                  width: 25,
                  height: 25,
                  child: Image.asset('assets/images/firebase_logo.png'),
                ),
              ),
              onTap: () {
                nav.to(Routes.productList);
              },
            ),
          ),
        ],
      ),
    );
  }
}
