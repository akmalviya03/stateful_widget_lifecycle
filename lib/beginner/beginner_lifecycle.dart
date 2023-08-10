import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle/beginner/beginner_widget.dart';

class BeginnerStatefulWidgetLifecycleApp extends StatelessWidget {
  BeginnerStatefulWidgetLifecycleApp({super.key});
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
                  return Visibility(
                    visible: value,
                    child: child!,
                  );
                },
                child: const BeginnerWidget(
                    value: 'Beginner StatefulWidget Lifecycle'),
              ),
              ElevatedButton(
                  onPressed: () {
                    isVisible.value = !isVisible.value;
                  },
                  child: const Text('Hide/Show Widget'))
            ],
          ),
        ));
  }
}
