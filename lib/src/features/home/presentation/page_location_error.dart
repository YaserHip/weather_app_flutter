import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app_flutter/src/features/home/application/service_weather.dart';

import '../../../../routing/app_route.dart';

class PageLocationError extends ConsumerStatefulWidget {
  const PageLocationError({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PageLocationErrorState();
}

class _PageLocationErrorState extends ConsumerState<PageLocationError> {
  bool permissionNotGranted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Important ...',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 26.0,
                ),
                const Text(
                  'This application needs permission to use the GPS to get your current weather.',
                  style: TextStyle(fontSize: 14.0),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                ElevatedButton(
                    onPressed: () {
                      context.go('pageHome');
                    },
                    child: const Text('Use this button to get permission')),
                const SizedBox(
                  height: 18.0,
                ),
                Visibility(
                  visible: permissionNotGranted,
                  child: const Text('Permission not granted :c ...'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
