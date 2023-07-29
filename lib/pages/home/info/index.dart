import 'package:flutter/material.dart';

import 'data.dart';
import 'item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> infoItem;

  const Info({super.key, this.infoItem = infoData, this.showTitle = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (showTitle)
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              '最新資訊',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ),
        Column(
          children: infoItem.map((f) => ItemWidget(data: f)).toList(),
        )
      ],
    );
  }
}
