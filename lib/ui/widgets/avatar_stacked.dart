import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yuno/resources/resources.dart';

class AvatarStacked extends StatelessWidget {
  const AvatarStacked({
    required this.urlImages,
    this.direction = TextDirection.rtl,
    this.borderSize = 2,
    super.key,
  });

  final TextDirection direction;
  final List<String> urlImages;
  final double borderSize;

  @override
  Widget build(BuildContext context) {
    const size = 32.0;
    const xShift = 6.0;

    var items = <Widget>[];
    if (urlImages.length > 5) {
      items = urlImages.sublist(0, 4).map(buildImage).toList();
      items.add(buildNumber(urlImages.length - 4));
    } else {
      items = urlImages.map(buildImage).toList();
    }

    return StackedWidgets(
      direction: direction,
      items: items,
      size: size,
      xShift: xShift,
    );
  }

  Widget buildImage(String urlImage) {
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
        color: AppColors.white100,
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl: urlImage,
            fit: BoxFit.cover,
            errorWidget: (context, _, __) => Assets.images.avatar.image(fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }

  Widget buildNumber(int number) {
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(borderSize),
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
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 100,
    this.xShift = 20,
    super.key,
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
