part of '../_index.dart';

class HomePageView extends StatelessWidget {
  final int index;
  const HomePageView({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => Column(
        children: [
          Expanded(
            child: PageView(
              controller: _dt.items[index]["pg_tools"]["controller"],
              scrollDirection: Axis.horizontal,
              onPageChanged: (page) {
                _dt.items[index]["pg_tools"]["active_page"].setState((s) => page);
              },
              children: [
                ...List.generate(
                  _dt.items[index]["pg_tools"]["count_page"],
                  (i) => HomePageViewSlide(index: index, indexSlide: i),
                ),
              ],
            ),
          ),
          HomePageViewIndicator(index: index),
        ],
      ),
    );
  }
}
