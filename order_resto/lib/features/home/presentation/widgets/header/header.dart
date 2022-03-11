import 'dart:async';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:order_resto/core/utils/colors.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/presentation/cubit/cart/cart_cubit.dart';
import 'package:order_resto/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:remixicon/remixicon.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'header_desktop.dart';
part 'header_mobile.dart';
part 'header_tablet.dart';

class HeaderApp extends StatefulWidget {
  const HeaderApp({Key? key}) : super(key: key);

  @override
  _HeaderAppState createState() => _HeaderAppState();
}

class _HeaderAppState extends State<HeaderApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) {
        return const HeaderMobile();
      },
      tablet: (ctx) {
        return const HeaderTablet();
      },
      desktop: (ctx) {
        return const HeaderDesktop();
      },
    );
  }
}
