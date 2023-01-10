import 'package:flutter/material.dart';

class CouponsAndNewWidget extends StatefulWidget {
  final List<String> imageList;
  const CouponsAndNewWidget({
    super.key,
    required this.imageList,
  });

  @override
  State<CouponsAndNewWidget> createState() => _CouponsAndNewWidgetState();
}

class _CouponsAndNewWidgetState extends State<CouponsAndNewWidget> {
  late final pageController = PageController(
    viewportFraction: 0.9,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.imageList.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 369 / 162,
                    child: Image.network(
                      widget.imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedBuilder(
          animation: pageController,
          builder: (context, child) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageList.length,
              (index) => Padding(
                padding: const EdgeInsets.all(2),
                child: CircleAvatar(
                  backgroundColor: index == pageController.page?.round()
                      ? Colors.black
                      : Colors.grey,
                  radius: 3,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
