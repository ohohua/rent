import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'index_recommond_data.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> dataList;

  const IndexRecommend({super.key, this.dataList = indexRecommendData});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0x80000000)),
      child: Column(
        children: <Widget>[
          const Row(
            children: <Widget>[
              Text('房屋推荐'),
              Text('更多'),
            ],
          ),
          Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: dataList
                  .map((item) => Container(
                        decoration: const BoxDecoration(color: Colors.red),
                        width:
                            (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
                        height: 100.0,
                      ))
                  .toList())
        ],
      ),
    );
  }
}
