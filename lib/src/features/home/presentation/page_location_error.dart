import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageLocationError extends ConsumerStatefulWidget {
  const PageLocationError({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PageLocationErrorState();
}

class _PageLocationErrorState extends ConsumerState<PageLocationError> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text('We have a problem ...'),
              const Text(
                  'This application needs permission to use the GPS to get your current weather.'),
              ElevatedButton(
                  onPressed: () {},
                  child: const Text('Please use this button to get permission'))
            ],
          ),
        ),
      ),
    );
  }
}
