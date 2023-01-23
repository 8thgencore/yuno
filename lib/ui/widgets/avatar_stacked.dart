import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

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

    List<Widget> items = [];
    if (urlImages.length > 5) {
      items = urlImages.sublist(0, 4).map((urlImage) => buildImage(urlImage)).toList();
      items.add(buildNumber(urlImages.length - 4));
    } else {
      items = urlImages.map((urlImage) => buildImage(urlImage)).toList();
    }

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
        color: AppColors.white100,
        child: ClipOval(
          child: CachedNetworkImage(imageUrl: urlImage, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget buildNumber(int number) {
    const double borderSize = 2;

    return ClipOval(
      child: Container(
        padding: const EdgeInsets.all(borderSize),
        color: AppColors.white100,
        child: ClipOval(
          child: ColoredBox(
            color: AppColors.dark100,
            child: Center(child: Text(number.toString(), style: AppTypography.r13l)),
          ),
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
