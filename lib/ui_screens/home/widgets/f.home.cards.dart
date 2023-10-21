part of '../_index.dart';

class HomeCards extends StatelessWidget {
  const HomeCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.spaceEvenly,
            runSpacing: 20,
            spacing: 20,
            children: [
              ...List.generate(
                _dt.items.length,
                (index) => Card(
                  elevation: 2,
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    height: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: HomePageView(index: index),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
