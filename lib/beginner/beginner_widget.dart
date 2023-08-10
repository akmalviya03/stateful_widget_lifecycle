import 'package:flutter/material.dart';

class BeginnerWidget extends StatefulWidget {
  const BeginnerWidget({super.key, required this.value});

  final String value;
  @override
  State<BeginnerWidget> createState() => _BeginnerWidgetState();
}

class _BeginnerWidgetState extends State<BeginnerWidget> {
  @override
  void initState() {
    super.initState();
    debugPrint('Init State called');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build called');
    return Text(widget.value);
  }

  @override
  void deactivate() {
    debugPrint('Deactivate called');
    super.deactivate();
  }

  @override
  void dispose() {
    debugPrint('Dispose called');
    super.dispose();
  }
}
