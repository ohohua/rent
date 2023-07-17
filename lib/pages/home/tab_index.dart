import 'package:flutter/material.dart';

import '../../widgets/common_swiper.dart';

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
        ],
      ),
    );
  }
}
