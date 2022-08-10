import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/book_mark_icon.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/utils/utils.dart';

class ImageSwiperComponent extends StatefulWidget {

   ImageSwiperComponent({Key? key, required this.images})
      : super(key: key);

  final homeController=Get.find<HomeController>();
  final List<String> images;

  @override
  _ImageSwiperComponentState createState() => _ImageSwiperComponentState();
}

class _ImageSwiperComponentState extends State<ImageSwiperComponent> {
  int _currentIndex = 0;
  var list = <int>[];
  @override
  void initState() {
    super.initState();
    list = List.generate(widget.images.length, (index) => index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.loose(Size(Get.width, 230.0)),
          child: Swiper(
            outer: false,
            onIndexChanged: (int i) {
              _currentIndex = i;
              setState(() {});
            },
            itemBuilder: (c, i) {
              return Stack(
                children: [
                  Container(
                    width: Get.width,
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                        child:
                            Image.network(widget.images[i], fit: BoxFit.cover)),
                  ),
                  BookMarkIcon(onTap: () {}),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Row(
                        children: [
                          Text(
                              Utils.twoDigitNumber(_currentIndex + 1) +
                                  '/' +
                                  Utils.twoDigitNumber(widget.images.length),
                              style: TextStyle(color: Colors.white)),
                          Icon(Icons.image, color: Colors.white)
                        ],
                      )),
                ],
              );
            },
            pagination: SwiperPagination(
                builder: SwiperPagination.dots,
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.topLeft),
            itemCount: widget.images.length,
          ),
        ),
      ],
    );
  }
}
