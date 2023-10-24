part of '../_index.dart';

class HomePageViewIndicator extends StatelessWidget {
  final int index;
  const HomePageViewIndicator({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return OnReactive(
      () => PageViewDotIndicator(
        currentItem: _ct.activePage(index),
        count: _ct.countPage(index),
        unselectedColor: Colors.grey,
        selectedColor: const Color.fromARGB(255, 65, 238, 238),
        duration: const Duration(milliseconds: 200),
        boxShape: BoxShape.circle,
        onItemClicked: (page) {
          _ct.pageController(index).animateToPage(
                page,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              );
        },
      ),
    );
  }
}
