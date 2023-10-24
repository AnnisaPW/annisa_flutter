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
                        color: _ct.activePage(index) != _ct.initialPage(index)
                            ? Theme.of(context).colorScheme.primary
                            : Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    height: 250,
                    child: OnReactive(
                      () => InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: _ct.activePage(index) != _ct.initialPage(index)
                            ? () {
                                for (var p in _dt.items[index]["pages"]) {
                                  nav.to(p["nav"]);
                                }
                              }
                            : null,
                        hoverColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: HomePageView(index: index),
                        ),
                      ),
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
