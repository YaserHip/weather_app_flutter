import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_route.g.dart';

enum AppRoute { pageLocationError, pageHome }

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
      initialLocation: '/${AppRoute.pageLocationError.name}',
      redirect: (context, state) async {
        return '/${AppRoute.pageHome.name}';
      },
      routes: [
        GoRoute(
          path: '/${AppRoute.pageHome.name}',
          name: AppRoute.pageHome.name,
          builder: (context, state) => Container(),
        )
      ]);
}
