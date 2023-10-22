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
                (index) => OnReactive(
                  () => Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: _dt.items[index]["pg_tools"]["active_page"].state !=
                                _dt.items[index]["pg_tools"]["controller"].initialPage
                            ? Theme.of(context).colorScheme.primary
                            // ? Colors.purple
                            : Colors.grey.withOpacity(0.2),
                      ),
                    ),
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
