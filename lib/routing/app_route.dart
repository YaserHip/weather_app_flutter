import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_flutter/src/features/home/application/service_weather.dart';
import 'package:weather_app_flutter/src/features/home/presentation/page_home.dart';
import 'package:weather_app_flutter/src/features/home/presentation/page_location_error.dart';

part 'app_route.g.dart';

enum AppRoute { pageLocationError, pageHome }

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
      initialLocation: '/${AppRoute.pageLocationError.name}',
      redirect: (context, state) async {
        final hasLocationPermission =
            await ref.watch(hasPermissionProvider.future);

        if (hasLocationPermission) {
          return '/${AppRoute.pageHome.name}';
        } else {
          return '/${AppRoute.pageLocationError.name}';
        }
      },
      routes: [
        GoRoute(
          path: '/pageHome',
          name: AppRoute.pageHome.name,
          builder: (context, state) => const PageHome(),
        ),
        GoRoute(
          path: '/pageLocationError',
          name: AppRoute.pageLocationError.name,
          builder: (context, state) => const PageLocationError(),
        )
      ]);
}
