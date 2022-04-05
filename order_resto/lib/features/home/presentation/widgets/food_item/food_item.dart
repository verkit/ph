import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/extension.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'food_desktop_item.dart';
part 'food_mobile_item.dart';
part 'food_tab_item.dart';

class FoodItem extends StatefulWidget {
  const FoodItem({
    Key? key,
    required this.item,
    required this.onAdd,
  }) : super(key: key);

  final FoodEntity item;
  final VoidCallback onAdd;

  @override
  _FoodItemState createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => FoodMobileItem(item: widget.item, onAdd: widget.onAdd),
      tablet: (ctx) => FoodTabletItem(item: widget.item, onAdd: widget.onAdd),
      desktop: (ctx) => FoodDesktopItem(item: widget.item, onAdd: widget.onAdd),
    );
  }
}
