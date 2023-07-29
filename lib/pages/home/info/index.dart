import 'package:flutter/material.dart';

import 'data.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> infoItem;

  const Info({super.key, this.infoItem = infoData, this.showTitle = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text('最新資訊'),
        Column(
          children: infoItem
              .map((f) => Container(
                    height: 100,
                    decoration: const BoxDecoration(color: Colors.red),
                  ))
              .toList(),
        )
      ],
    );
  }
}
