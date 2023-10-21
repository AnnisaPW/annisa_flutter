part of '../_index.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        height: double.infinity,
        child: Container(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
          ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: HomeCards(),
          ),
        ),
      ),
    );
  }
}
