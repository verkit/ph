import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:order_resto/features/home/presentation/pages/home_page.dart';

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
          ],
        );
}
