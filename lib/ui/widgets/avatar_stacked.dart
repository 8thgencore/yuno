import 'package:flutter/material.dart';

class AvatarStacked extends StatelessWidget {
  const AvatarStacked({
    super.key,
    required this.urlImages,
    this.direction = TextDirection.rtl,
  });

  final TextDirection direction;
  final List<String> urlImages;

  @override
  Widget build(BuildContext context) {
    const double size = 32;
    const double xShift = 6;
    final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();

    return StackedWidgets(
      direction: direction,
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    const double borderSize = 2;

    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(borderSize),
        color: Colors.white,
        child: ClipOval(
          child: Image.network(urlImage, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class StackedWidgets extends StatelessWidget {
  const StackedWidgets({
    super.key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 20,
  });

  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;

  @override
  Widget build(BuildContext context) {
    final allItems = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;
          final value = Container(
            width: size,
            height: size,
            margin: EdgeInsets.only(left: left * index),
            child: item,
          );

          return MapEntry(index, value);
        })
        .values
        .toList();

    return Stack(
      children: direction == TextDirection.ltr ? allItems.reversed.toList() : allItems,
    );
  }
}
