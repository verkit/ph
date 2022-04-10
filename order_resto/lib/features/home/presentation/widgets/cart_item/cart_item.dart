import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/constants.dart';
import 'package:order_resto/core/utils/extension.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'cart_desktop_item.dart';
part 'cart_mobile_item.dart';
part 'cart_tablet_item.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    Key? key,
    required this.cart,
    required this.onDecrease,
    required this.onIncrease,
    required this.changeCondiman,
  }) : super(key: key);

  final CartEntity cart;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;
  final Function(String)? changeCondiman;

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => CartMobileItem(
        item: widget.cart,
        onDecrease: widget.onDecrease,
        onIncrease: widget.onIncrease,
        changeCondiman: widget.changeCondiman,
      ),
      tablet: (ctx) => CartTabletItem(
        item: widget.cart,
        onDecrease: widget.onDecrease,
        onIncrease: widget.onIncrease,
        changeCondiman: widget.changeCondiman,
      ),
      desktop: (ctx) => CartDesktopItem(
        item: widget.cart,
        onDecrease: widget.onDecrease,
        onIncrease: widget.onIncrease,
        changeCondiman: widget.changeCondiman,
      ),
    );
  }
}
