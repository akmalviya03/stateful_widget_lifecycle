import 'package:flutter/material.dart';

class IntermediateWidget extends StatefulWidget {
  const IntermediateWidget({super.key, required this.value});

  final String value;
  @override
  State<IntermediateWidget> createState() => _IntermediateWidgetState();
}

class _IntermediateWidgetState extends State<IntermediateWidget> {
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
  void didUpdateWidget(IntermediateWidget oldWidget) {
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
  void dispose() {
    debugPrint('Dispose called');
    super.dispose();
  }
}
