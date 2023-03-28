import 'package:flutter/material.dart';
class IndicatorPage extends StatefulWidget {
  static const String routeName = "/indicator_test";
  const IndicatorPage({Key? key}) : super(key: key);

  @override
  State<IndicatorPage> createState() => _IndicatorPageState();
}

class _IndicatorPageState extends State<IndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
    );
  }
}
