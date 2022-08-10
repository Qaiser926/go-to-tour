import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelNearYouItem extends StatelessWidget {

  HomeController controller=Get.find();
  HotelNearYouItem({Key? key}) : super(key: key);

  final _textStyle = TextStyle(
    color: CustomColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    letterSpacing: 1.2,
    height: 1.4,
  );

  @override
  Widget build(BuildContext context) {

    // return Container();
    return InkWell(
      // onTap: () => Get.toNamed(Routes.Hotel_Details),
      child: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: const CircularProgressIndicator());
        }
        if (controller.isEmptyData.value) {
          return Center(
              child: InkWell(
                onTap: () {},
                child: const Text("No Data Found"),
              ));
        }
      return  GridView.builder(
          // itemCount: controller.modal.value.results!.length,
          itemCount: controller.modal.value.featuredHotels!.length,
          // itemCount: 10,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (BuildContext context, int index) {
            var itemData = controller.modal.value.featuredHotels![index];
            // var itemData = controller.modal.value.results![index];
            return InkWell(
              onTap: () => Get.toNamed(Routes.Hotel_Details,arguments: controller.modal.value.featuredHotels![index]),
              // onTap: () => Get.toNamed(Routes.Hotel_Details,arguments: controller.modal.value.results![index]),
              child: Container(
                height: 130.h,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: CustomColors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        // height: 195.h,
                        // height: 100.h,
                        decoration: BoxDecoration(
                          // background image
                          // color: Color(0xFFC4C4C4),
                          image: DecorationImage(
                              image: NetworkImage(
                                  // itemData.featuredHotels![index].thumbnail ?? ""
                                  itemData.thumbnail.toString()
                                // itemData.picture!.large.toString()
                              ),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 24,
                            width: 24,
                            margin: EdgeInsets.all(6.r),
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.bookmark,
                              size: 18,
                              color: CustomColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      // itemData.name!.title.toString(),
                      itemData.title.toString(),
                      style: _textStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: CustomColors.gray,
                        height: 2.5,
                      ),
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          // rating: 3.3,
                          rating: double.parse(itemData.avgReviews!.totalReviews.toString()),
                          itemBuilder: (context, index) =>
                              Icon(Icons.star, color: Colors.amber),
                          itemCount: 5,
                          itemSize: 8.0,
                          direction: Axis.horizontal,
                        ),
                        Spacer(),
                        RichText(
                          softWrap: true,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "\$${itemData.avgReviews!.totalReviews}/",
                                // text: "\$49/",
                                style: _textStyle.copyWith(
                                  color: Color(0xFF07AEAF),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.sp,
                                ),
                              ),
                              TextSpan(
                                text: "night",
                                style: _textStyle.copyWith(
                                  color: CustomColors.deepGray,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
      )
    );

  }
}
