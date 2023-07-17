import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

const List<String> defaultImage = ['https://via.placeholder.com/350x150'];
const imageWidth = 350;
const imageHeight = 150;

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  const CommonSwiper({super.key, this.images = defaultImage});

  @override
  Widget build(BuildContext context) {
    var height =
        MediaQuery.of(context).size.width / imageWidth * imageHeight; // 动态设置高度
    return SizedBox(
        height: height,
        child: Swiper(
          autoplay: true,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              images[index],
              fit: BoxFit.fill,
            );
          },
          itemCount: images.length,
          pagination: const SwiperPagination(),
          // control: const SwiperControl(),
        ));
  }
}
