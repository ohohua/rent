import 'package:flutter/material.dart';
import 'index_recommend_data_widget.dart';
import 'index_recommond_data.dart';

class IndexRecommend extends StatelessWidget {
  final List<IndexRecommendItem> dataList;

  const IndexRecommend({super.key, this.dataList = indexRecommendData});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.grey),
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('房屋推荐'),
                Text('更多'),
              ],
            ),
          ),
          Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: dataList
                  .map((item) => IndexRecommendDataWidget(data: item))
                  .toList())
        ],
      ),
    );
  }
}
