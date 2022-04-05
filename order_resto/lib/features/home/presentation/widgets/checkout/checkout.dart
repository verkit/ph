import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/data/datasources/payments.dart';
import 'package:order_resto/features/home/presentation/cubit/cart/cart_cubit.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'checkout_desktop.dart';
part 'checkout_mobile.dart';
part 'checkout_tablet.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (ctx) => CheckoutMobile(),
      tablet: (ctx) => CheckoutTablet(),
      desktop: (ctx) => CheckoutDesktop(),
    );
  }
}
