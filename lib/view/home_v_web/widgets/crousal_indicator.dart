import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithIndicator extends StatefulWidget {
  const CarouselWithIndicator({super.key, required this.imgList, this.height = 460});

  final List<String> imgList;
  final double height;

  @override
  State<StatefulWidget> createState() {
    return CarouselWithIndicatorState();
  }
}

class CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              child: Image.asset(
                item,
                fit: BoxFit.cover,
                cacheWidth: 1080,
                filterQuality: FilterQuality.medium,
              ),
            ),
          ),
        )
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
            height: widget.height,
            viewportFraction: 0.92,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.asMap().entries.map((entry) {
            final bool active = _current == entry.key;
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: active ? 22.0 : 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 3.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                      .withValues(alpha: active ? 0.9 : 0.3),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
