import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:order_resto/core/injection/di.dart';
import 'package:order_resto/core/utils/observer.dart';
import 'package:order_resto/core/utils/theme.dart';
import 'package:order_resto/features/home/domain/entities/cart_entity.dart';
import 'package:order_resto/features/home/domain/entities/food_entity.dart';
import 'package:order_resto/features/home/presentation/bloc/app/login_info.dart';
import 'package:order_resto/features/home/presentation/bloc/cart/cart_cubit.dart';
import 'package:order_resto/features/home/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:order_resto/features/home/presentation/bloc/home/home_cubit.dart';
import 'package:order_resto/features/home/presentation/pages/dashboard/dashboard_page.dart';
import 'package:order_resto/features/home/presentation/pages/home/home_page.dart';
import 'package:order_resto/features/home/presentation/pages/login_page.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

Future<void> main() async {
  // runZonedGuarded(
  //   () async {
  configureDependencies();

  await Hive.initFlutter();

  Intl.defaultLocale = 'id_ID';

  // Register Adapter
  Hive.registerAdapter(CartEntityAdapter());
  Hive.registerAdapter(FoodEntityAdapter());

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 767, tablet: 480, watch: 180),
    customRefinedBreakpoints: const RefinedBreakpoints(),
  );

  await BlocOverrides.runZoned(
    () async => runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeCubit>()),
        BlocProvider(create: (_) => getIt<CartCubit>()),
        BlocProvider(create: (_) => getIt<DashboardBloc>()),
      ],
      child: ChangeNotifierProvider<LoginInfo>.value(
        value: getIt<LoginInfo>(),
        child: MyApp(),
      ),
    )),
    blocObserver: AppBlocObserver(),
  );
  // },
  // (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  // );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;
  late LoginInfo loginInfo;
  @override
  void initState() {
    // final LoginInfo loginInfo = LoginInfo();
    loginInfo = context.read<LoginInfo>();
    loginInfo.check();

    setState(() {});
    router = GoRouter(
      urlPathStrategy: UrlPathStrategy.path,
      initialLocation: '/',
      // redirect: (state) {
      //   final loggedIn = loginInfo.loggedIn;

      //   switch (state.subloc) {
      //     case '/login':
      //       return loggedIn ? '/dashboard' : null;
      //     case '/dashboard':
      //       return loggedIn ? null : '/login';
      //     default:
      //       return null;
      //   }
      // },
      refreshListenable: loginInfo,
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const HomePage(),
            );
          },
        ),
        GoRoute(
          path: '/dashboard',
          builder: (context, state) {
            return const DashboardPage();
          },
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginPage(),
        ),
      ],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      theme: themeData(context),
      builder: EasyLoading.init(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('id', 'ID'),
      ],
    );
  }
}
