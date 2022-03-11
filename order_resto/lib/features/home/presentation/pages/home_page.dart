import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/app_state.dart';
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/presentation/cubit/cart/cart_cubit.dart';
import 'package:order_resto/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:order_resto/features/home/presentation/widgets/cart_drawer/cart_drawer.dart';
import 'package:order_resto/features/home/presentation/widgets/food_item/food_item.dart';
import 'package:order_resto/features/home/presentation/widgets/group_item/group_item.dart';
import 'package:order_resto/features/home/presentation/widgets/header/header.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'home_desktop.dart';
part 'home_mobile.dart';
part 'home_tablet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) {
        return const HomeMobilePage();
      },
      tablet: (ctx) {
        return const HomeTabletPage();
      },
      desktop: (ctx) {
        return const HomeDesktopPage();
      },
    );
  }
}
