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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 26,
            ),
            const SizedBox(
              child: Text('Mazatlan',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(
              height: 130,
            ),
            Image.network(
                'https://cdn.weatherapi.com/weather/128x128/night/116.png'),
            const Text(
              '50°C',
              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 120),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Feelslike: 20°C'),
                    Text('Humidity: 90%'),
                    Text('Wind: 70km/h')
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
