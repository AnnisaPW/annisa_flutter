part of '../_index.dart';

class HomePageViewSlide extends StatelessWidget {
  const HomePageViewSlide({
    super.key,
    required this.index,
    required this.indexSlide,
  });

  final int index;
  final int indexSlide;

  @override
  Widget build(BuildContext context) {
    return OnReactive(() => Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    child: Image.asset(_ct.imageAsset(index, indexSlide)),
                  ),
                  const SizedBoxH(10),
                  Text(
                    _dt.items[index]["pages"][indexSlide]["title"],
                    textScaleFactor: 1.5,
                  ),
                  Text(
                    _dt.items[index]["pages"][indexSlide]["subtitle"],
                  ),
                ],
              ),
            ),
            _ct.activePage(index) != _ct.countPage(index) - 1
                ? Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {
                        _ct.nextPage(index);
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  )
                : const SizedBox.shrink(),
            _ct.activePage(index) != _ct.initialPage(index)
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        _ct.previousPage(index);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ));
  }
}
