import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/features/home/presentation/pages/dashboard/dashboard_page.dart';
import 'package:order_resto/features/home/presentation/pages/home/home_page.dart';
import 'package:order_resto/features/home/presentation/pages/login_page.dart';

part 'routes.dart';

@injectable
class AppRouter extends GoRouter {
  AppRouter()
      : super(
          urlPathStrategy: UrlPathStrategy.path,
          initialLocation: AppRoutes.home,
          routes: [
            GoRoute(
              path: AppRoutes.home,
              pageBuilder: (context, state) {
                return MaterialPage(
                  key: state.pageKey,
                  child: const HomePage(),
                );
              },
            ),
            GoRoute(
              path: AppRoutes.login,
              builder: (context, state) => const LoginPage(),
            ),
            GoRoute(
              path: AppRoutes.dashboard,
              builder: (context, state) {
                return const DashboardPage();
              },
            ),
          ],
        );
}
