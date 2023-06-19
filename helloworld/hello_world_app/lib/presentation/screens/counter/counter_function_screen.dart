import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Function'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh_rounded),
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                (clickCounter <= 1) ? 'Click' : 'Clicks',
                //'Click${clickCounter <= 1 ? '' : 's' otra manera
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
              child: const Icon(Icons.refresh_outlined),
            )
          ],
        ));
  }
}
