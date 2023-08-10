import 'package:flutter/material.dart';

class AdvancedWidget extends StatefulWidget {
  const AdvancedWidget({super.key, required this.value});

  final String value;
  @override
  State<AdvancedWidget> createState() => _AdvancedWidgetState();
}

class _AdvancedWidgetState extends State<AdvancedWidget> {
  late MediaQueryData mediaQueryData;

  @override
  void initState() {
    super.initState();
    debugPrint('Init State called');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Build called');
    return Text('${widget.value}'
        '${mediaQueryData.size.height}'
        '${mediaQueryData.size.width}');
  }

  @override
  void didUpdateWidget(AdvancedWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('Did Update Widget Called');
    debugPrint('Old Value ${oldWidget.value}');
    debugPrint('New Value ${widget.value}');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mediaQueryData = MediaQuery.of(context);
    debugPrint('DidChangeDependencies Called');
  }

  @override
  void deactivate() {
    debugPrint('Deactivate called');
    super.deactivate();
  }

  @override
  void activate() {
    super.activate();
    debugPrint('Activate Called');
  }

  @override
  void dispose() {
    debugPrint('Dispose called');
    super.dispose();
  }
}
