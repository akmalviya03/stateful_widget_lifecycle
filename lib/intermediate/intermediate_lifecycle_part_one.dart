import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle/intermediate/intermediate_wigdet.dart';

class IntermediateStatefulWidgetLifecyclePartOneApp extends StatelessWidget {
  IntermediateStatefulWidgetLifecyclePartOneApp({super.key});
  final ValueNotifier<bool> isVisible = ValueNotifier(true);
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
                valueListenable: isVisible,
                builder: (context, value, child) {
                  if (value) {
                    return const IntermediateWidget(
                        value:
                            'Intermediate StatefulWidget Lifecycle Widget One');
                  } else {
                    return const IntermediateWidget(
                        value:
                            'Intermediate StatefulWidget Lifecycle Widget Two');
                  }
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    isVisible.value = !isVisible.value;
                  },
                  child: const Text('Hide/Show Widget One')),
            ],
          ),
        ));
  }
}
