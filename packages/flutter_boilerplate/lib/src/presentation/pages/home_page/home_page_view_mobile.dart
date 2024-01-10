import 'package:flutter/material.dart';

import '../../../domain/use_cases/use_cases.dart';

class HomePageViewMobile extends StatefulWidget {
  const HomePageViewMobile({super.key, required this.title});

  final String title;

  @override
  State<HomePageViewMobile> createState() => _HomePageViewMobileState();
}

class _HomePageViewMobileState extends State<HomePageViewMobile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              ,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: IncrementCounterUseCase().call,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
