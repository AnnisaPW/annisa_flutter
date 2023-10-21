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
            InkWell(
              onTap: _dt.items[index]["pg_tools"]["active_page"].state !=
                      _dt.items[index]["pg_tools"]["controller"].initialPage
                  ? () {
                      nav.to(_dt.items[index]["pages"][indexSlide]["nav"]);
                    }
                  : null,
              hoverColor: const ColorScheme.dark().primary.withOpacity(0.2),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 80,
                        child: Image.asset(_dt.items[index]["pages"][indexSlide]["image_asset"]),
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
              ),
            ),
            _dt.items[index]["pg_tools"]["active_page"].state != _dt.items[index]["pg_tools"]["count_page"] - 1
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
            _dt.items[index]["pg_tools"]["active_page"].state != _dt.items[index]["pg_tools"]["controller"].initialPage
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
