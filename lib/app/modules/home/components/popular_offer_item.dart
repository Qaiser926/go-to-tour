import
'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:get/get.dart' as http;
class PopularOfferItem extends StatelessWidget {
  HomeController controller=Get.put(HomeController());
   PopularOfferItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(()=> ListView.builder(
        padding: const EdgeInsets.only(left: 20),
        scrollDirection: Axis.horizontal,
        itemCount: controller.getposts.length,
        // itemCount: ,
        itemBuilder: (BuildContext context, int index) {
          final itemData=controller.getposts[index];
          return
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
              child: Container(

              height: 140.h,
              width: 130.w,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(itemData.featuredFlights![index].thumbnail.toString()),
                  fit: BoxFit.contain
                ),
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(14.r),
                // gradient: LinearGradient(
                //   colors: [
                //     Colors.grey.withOpacity(0.2),
                //     Colors.black,
                //   ],
                //   stops: [0.0, 1.0],
                //   begin: FractionalOffset.topCenter,
                //   end: FractionalOffset.bottomCenter,
                // ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    // Strings.newYear,
                    itemData.featuredFlights![index].title.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      letterSpacing: 1.2,
                      height: 1.4,
                      color: CustomColors.secondary,
                      fontSize: 10.sp,
                    ),
                  ),
                  // Text(
                  //   // Strings.getFreeLunch,
                  //   itemData.featuredFlights[index].
                  //   maxLines: 2,
                  //   overflow: TextOverflow.ellipsis,
                  //   style: TextStyle(
                  //     letterSpacing: 1.2,
                  //     height: 1.4,
                  //     color: CustomColors.white,
                  //     fontSize: 10.sp,
                  //   ),
                  // ),
                ],
              ),
          ),
            );
        }
    ),
    );

  }
}
