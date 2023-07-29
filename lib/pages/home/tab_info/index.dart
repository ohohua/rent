import 'package:flutter/material.dart';
import 'package:rent/pages/home/info/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({super.key});

  @override
  State<StatefulWidget> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('資訊tab'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10.0),
        children: const [Info(), Info(), Info()],
      ),
    );
  }
}
