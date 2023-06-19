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
            const CustomButton(icon: Icons.plus_one_outlined,),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(icon: Icons.exposure_minus_1_outlined,),
            const SizedBox(
              height: 15,
            ),
            const CustomButton(icon: Icons.refresh_outlined,),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;

  const CustomButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: () {},
      child: Icon(icon),
    );
  }
}
