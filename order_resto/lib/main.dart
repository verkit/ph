import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:order_resto/core/injection/di.dart';
import 'package:order_resto/core/navigation/router.dart';
import 'package:order_resto/core/utils/observer.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/presentation/cubit/cart/cart_cubit.dart';
import 'package:order_resto/features/home/presentation/cubit/home/home_cubit.dart';

Future<void> main() async {
  // runZonedGuarded(
  //   () async {
  configureDependencies();
  final router = getIt<AppRouter>();

  await Hive.initFlutter();

  // Register Adapter
  Hive.registerAdapter(CartEntityAdapter());
  Hive.registerAdapter(FoodEntityAdapter());

  await BlocOverrides.runZoned(
    () async => runApp(MyApp(appRouter: router)),
    blocObserver: AppBlocObserver(),
  );
  // },
  // (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeCubit>()),
        BlocProvider(create: (_) => getIt<CartCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerDelegate: appRouter.routerDelegate,
        routeInformationParser: appRouter.routeInformationParser,
        theme: themeData(context),
        builder: EasyLoading.init(),
      ),
    );
  }
}
