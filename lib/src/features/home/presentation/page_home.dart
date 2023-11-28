import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_flutter/src/features/home/data/repository_home.dart';

import '../domain/weather.dart';

class PageHome extends ConsumerStatefulWidget {
  const PageHome({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PageHomeState();
}

weatherPage(Weather data) => Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              child: Text(data.location.name,
                  style: const TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(
              height: 130,
            ),
            Image.network('https:${data.current.condition.icon}'
                .replaceFirst('64x64', '128x128')),
            Text(
              '${data.current.temp.toInt()}°C',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Text('Feelslike: ${data.current.feelsLike.toInt()}°C'),
                    Text('Humidity: ${data.current.humidity.toInt()}%'),
                    Text('Wind: ${data.current.wind} km/h')
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );

class _PageHomeState extends ConsumerState<PageHome> {
  @override
  Widget build(BuildContext context) {
    final getWeather = ref.watch(currentWeatherProvider);

    return getWeather.when(
        data: (data) => weatherPage(data),
        loading: () => const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        error: (Object error, StackTrace stackTrace) => Scaffold(
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                      'There was an error, please check your internet connection and try again. ${stackTrace.toString()}'),
                ),
              ),
            ));
  }
}
