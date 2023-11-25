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
          child: Center(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                child: Text('Mazatlan',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                '50°C',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Feelslike: 20°C'),
                  Text('Humidity: 90%'),
                  Text('Wind: 70km/h')
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
