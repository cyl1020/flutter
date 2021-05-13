import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

//首页轮播图的组件
class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  const SwiperDiy({Key key, this.swiperDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      // width: double.infinity,
      //swiper插件
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(this.swiperDataList[index]["image"], fit: BoxFit.cover);
        },
        itemCount: this.swiperDataList.length,
        pagination: SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

