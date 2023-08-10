import 'package:flutter/material.dart';
import 'package:stateful_widget_lifecycle/advanced/advanced_widget.dart';

class AdvancedStatefulWidgetLifeCycleApp extends StatelessWidget {
  final _key = GlobalKey();
  final ValueNotifier<bool> valueNotifier = ValueNotifier(true);

  AdvancedStatefulWidgetLifeCycleApp({super.key});
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
                  valueListenable: valueNotifier,
                  builder: (context, value, child) {
                    if (value) {
                      return Container(
                        color: Colors.green[100],
                        child: AdvancedWidget(
                          key: _key,
                          value:
                              'Intermediate StatefulWidget Lifecycle Widget One',
                        ),
                      );
                    } else {
                      return AdvancedWidget(
                        key: _key,
                        value:
                            'Intermediate StatefulWidget Lifecycle Widget One',
                      );
                    }
                  }),
              ElevatedButton(
                  onPressed: () {
                    valueNotifier.value = !valueNotifier.value;
                  },
                  child: const Text('Move Widget'))
            ],
          ),
        ));
  }
}
