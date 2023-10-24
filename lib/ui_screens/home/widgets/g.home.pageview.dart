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
              controller: _ct.pageController(index),
              scrollDirection: Axis.horizontal,
              onPageChanged: (page) {
                _ct.rxActivePage(index).setState((s) => page);
              },
              children: [
                ...List.generate(
                  _ct.countPage(index),
                  (i) => HomePageViewSlide(
                    index: index,
                    indexSlide: i,
                  ),
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
