import 'package:flutter/material.dart';

import '../../../widgets/common_swiper.dart';
import '../info/index.dart';
import 'index_navigator.dart';
import 'index_recommond.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tabIndex'),
      ),
      body: ListView(
        children: const [
          CommonSwiper(), // 轮播图
          IndexNavigator(),
          IndexRecommend(),
          Info(
            showTitle: true,
          ),
        ],
      ),
    );
  }
}
