import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageHome extends ConsumerStatefulWidget {
  const PageHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PageHomeState();
}

class _PageHomeState extends ConsumerState<PageHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Mazatlan'),
              Text('50°C'),
              Text('Feelslike: 20°C'),
              Text('Humidity: 90%'),
              Text('Wind: 70km/h')
            ],
          ),
        ),
      )),
    );
  }
}
