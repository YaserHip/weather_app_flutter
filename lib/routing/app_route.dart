import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/src/features/home/presentation/page_home.dart';
import 'package:weather_app_flutter/src/features/home/presentation/page_location_error.dart';
import 'package:weather_app_flutter/utils/helper_location.dart';

part 'app_route.g.dart';

enum AppRoute { pageLocationError, pageHome }

@Riverpod(keepAlive: true)
GoRouter appRouter(AppRouterRef ref) {
  final locationHelper = ref.watch(helperLocationProvider);
  return GoRouter(
      initialLocation: '/',
      redirect: (context, state) async {
        if (await locationHelper.hasPermission()) {
          return '/';
        } else {
          return '/pageLocationError';
        }
      },
      routes: [
        GoRoute(
            path: '/',
            name: AppRoute.pageHome.name,
            builder: (context, state) => const PageHome(),
            routes: [
              GoRoute(
                path: 'pageLocationError',
                name: AppRoute.pageLocationError.name,
                builder: (context, state) => const PageLocationError(),
              )
            ]),
      ]);
}
