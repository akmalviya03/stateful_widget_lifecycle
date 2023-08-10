import 'dart:math';
import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle/intermediate/intermediate_wigdet.dart';

class IntermediateStatefulWidgetLifecyclePartTwoApp extends StatelessWidget {
  IntermediateStatefulWidgetLifecyclePartTwoApp({super.key});
  final ValueNotifier<MediaQueryData> currentMediaQuery =
      ValueNotifier(const MediaQueryData(size: Size(150, 150)));
  final Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Stateful Widget Lifecycle")),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder(
                  valueListenable: currentMediaQuery,
                  builder: (context, data, child) {
                    return MediaQuery(data: data, child: child!);
                  },
                  child: const IntermediateWidget(
                      value:
                          'Intermediate StatefulWidget Lifecycle Widget One')),
              ElevatedButton(
                  onPressed: () {
                    currentMediaQuery.value = MediaQueryData(
                        size: Size(random.nextDouble() * 500,
                            random.nextDouble() * 500));
                  },
                  child: const Text('Change MediaQueryData')),
            ],
          ),
        ));
  }
}
