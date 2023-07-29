import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'index_recommond_data.dart';

class IndexRecommendDataWidget extends StatelessWidget {
  final IndexRecommendItem data;

  const IndexRecommendDataWidget({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(data.navigateUri);
        },
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(data.title),
                  Text(data.subTitle),
                ],
              ),
              Container(
                  decoration: ShapeDecoration(
                      image: DecorationImage(
                          image: AssetImage(data.imageUri),
                          fit: BoxFit.fitWidth),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(30))),
                  width: 60.0,
                  height: 60.0),
            ],
          ),
        ));
  }
}
