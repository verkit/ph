import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/extension.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/presentation/cubit/cart/cart_cubit.dart';
import 'package:order_resto/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:order_resto/features/home/presentation/widgets/cart_item/cart_item.dart';
import 'package:order_resto/features/home/presentation/widgets/checkout/checkout.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'cart_drawer_desktop.dart';
part 'cart_drawer_mobile.dart';
part 'cart_drawer_tablet.dart';

class CartDrawer extends StatefulWidget {
  const CartDrawer({Key? key}) : super(key: key);

  @override
  _CartDrawerState createState() => _CartDrawerState();
}

class _CartDrawerState extends State<CartDrawer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) {
        return const CartDrawerMobile();
      },
      tablet: (ctx) {
        return const CartDrawerTablet();
      },
      desktop: (ctx) {
        return const CartDrawerDesktop();
      },
    );
  }
}
