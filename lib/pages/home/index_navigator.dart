
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent/pages/home/index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList.map((item) => InkWell(onTap: () {
          item.onTap(context);
        }, child: Column(
          children: <Widget>[
            Image.asset(item.imageUri, width: 40.5,),
            Text(item.title, style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ))).toList(),
      ),
    );
  }


}