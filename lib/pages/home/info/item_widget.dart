import 'package:flutter/material.dart';

import 'data.dart';

class ItemWidget extends StatelessWidget {
  final InfoItem data;

  const ItemWidget({super.key, required this.data});
  static const textStyle = TextStyle(color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80.0,
        margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Row(
          children: [
            Image.asset(
              data.imageUri,
              width: 100.0,
            ),
            const Padding(padding: EdgeInsets.only(left: 10.0)),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.time,
                      style: textStyle,
                    ),
                    Text(
                      data.source,
                      style: textStyle,
                    )
                  ],
                )
              ],
            ))
          ],
        ));
  }
}
