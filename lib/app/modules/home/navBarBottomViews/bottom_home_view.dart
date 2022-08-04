import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/modules/Checkout/views/checkout_view.dart';
import 'package:go_tour/app/modules/flight/views/flight_view.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';

import 'package:go_tour/app/modules/home/components/hotel_near_you_item.dart';
import 'package:go_tour/app/modules/home/components/popular_offer_item.dart';
import 'package:go_tour/app/modules/home/components/top_icon.dart';
import 'package:go_tour/app/modules/search/views/search_flight_view.dart';
import 'package:go_tour/app/modules/ticketDetails/views/ticket_details_view.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/custom_images.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// class BottomHomeView extends GetView<HomeController> {
class BottomHomeView extends GetView<HomeController> {

  // HomeController dataController=Get.put(HomeController());
  // BottomHomeView({Key? key}) : super(key: key);
  final double expanded_height = 315;
  final double rounded_container_height = 50;


  final name = RxString('asdf');
  var nd = RxInt(2);

  final _textStyle = TextStyle(
    color: CustomColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    height: 1.4,
  );


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   // super.initState();
  //   dataController.getUser();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            _buildSliverHead(),
            SliverToBoxAdapter(child: popularOffer()),
            SliverToBoxAdapter(child: hotelNearYou()),
          ],
        ),
      ),


    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
      delegate: DetailSliverDelegate(
        expanded_height,
        rounded_container_height,
        CustomColors.backgroundColor,
      ),
    );
  }

  Widget popularOffer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            Strings.popularOffer,
            style: _textStyle.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              height: 2,
              color: CustomColors.gray,
            ),
          ),
        ),
        SizedBox(height: 7.h),
        SizedBox(
          height: 140.h,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) =>
                PopularOfferItem(),
          ),
        )
      ],
    );
  }

  Widget hotelNearYou() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32.h),
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                Strings.hotelNearYou,
                style: _textStyle.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                  color: CustomColors.gray,
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.toNamed(Routes.HOTEL_LIST);
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text(
                  'See All',
                  style: _textStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                    color: CustomColors.gray,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7.h),
        // GridView.builder(
        // GridView.builder(
        //   itemCount: 10,
        //   shrinkWrap: true,
        //   padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
        //   physics: NeverScrollableScrollPhysics(),
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     mainAxisSpacing: 8,
        //     crossAxisSpacing: 8,
        //   ),
        //   itemBuilder: (BuildContext context, int index) {
        //     return HotelNearYouItem();
        //   },
        // ),
        HotelNearYouItem()
      ],
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  List<Color> colors = [Color(0xFFF2F2FF),Color(0xFFFFDCFB),Color(0xFFFFF1E0),Color(0xFFE5F1F8)];
  List<String> image=[CustomImages.travelIcon,CustomImages.hotelIcon,CustomImages.aeroplaneIcon,CustomImages.discount];
 // List<dynamic> ontap=[SearchFlightView(), FlightView(),
 //   TicketDetailsView(),  CheckoutView(),];

  HomeController controller=Get.find();
  HomeController homeController=Get.put(HomeController());

  
  final HomeController c =Get.find();
  final double expandedHeight;

  final double rounded_container_height;
  final Color color;

  DetailSliverDelegate(
      this.expandedHeight, this.rounded_container_height, this.color);

  final _textStyle = TextStyle(
    color: CustomColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    height: 1.4,
  );

  Widget topRowIcon() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopIcon(
            onTap: () => Get.toNamed(Routes.MY_TRIP_COMPLETE),
            image: CustomImages.travelIcon,
            // title: Strings.trips,
            color: Color(0xFFF2F2FF),
          ),
          TopIcon(
            onTap: () => Get.toNamed(Routes.HOTEL_LIST),
            image: CustomImages.hotelIcon,
            // title: Strings.hotels,
            color: Color(0xFFFFDCFB),
          ),
          TopIcon(
            onTap: () => Get.toNamed(Routes.FLIGHT),
            image: CustomImages.aeroplaneIcon,
            // title: Strings.flights,
            color: Color(0xFFFFF1E0),
          ),
          TopIcon(
            onTap: () => Get.toNamed(Routes.OFFERS),
            image: CustomImages.discount,
            // title: Strings.offers,
            color: Color(0xFFE5F1F8),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Container(color: color),
          Image.asset(
            CustomImages.backgroundImage,
            width: double.infinity,
            height: expandedHeight - rounded_container_height,
            fit: BoxFit.fill,
          ),
         /// background image
         // c.obx((data) =>ListView.builder(
         //   itemCount: data!.length,
         //   itemBuilder: (context,index){
         //     return  Image.network(
         //      data[index]
         //     );
         //
         //   },
         // ) ),


          Positioned(
            top: 24,
            left: 24,
            right: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(CustomImages.menuIcon),
                    SvgPicture.asset(CustomImages.avatarIcon),
                  ],
                ),
                SizedBox(height: 42),
                Text(Strings.letExplore, style: _textStyle),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_pin,
                          size: 14.r,
                          color: CustomColors.white,
                        ),
                      ),
                      TextSpan(
                        text: "  ${Strings.yourIn}",
                        style: _textStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: expandedHeight - rounded_container_height * 2 - shrinkOffset,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(

              height: rounded_container_height,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              // child: topRowIcon(),
                child:
                 Container(

                   child: Obx(()=>
                //  controller.isDataLoading.value?Center(
                //   child: CircularProgressIndicator(),
                // ):

                   ListView.builder(
                     scrollDirection: Axis.horizontal,

                     padding: EdgeInsets.all(8),
                     // itemCount: data!.length,
                     itemCount: homeController.getposts.length,
                     // itemCount: controller.listData!.results!.length,
                     itemBuilder: (context, index) {
                       // String image='';
                       // String title="";
                       // try{
                       //   title=controller.listData!.results![index].name.toString();
                       // }catch(e){
                       //   title='';
                       // }
                       var item=homeController.getposts[index];
                       return Container(
                         width: MediaQuery.of(context).size.width*0.25,
                         child: Column(
                           children: [
                             InkWell(
                               onTap: (){
                                 Get.to(SearchFlightView());
                               },
                               child: TopIcon(
                                 color: colors[index],
                                 // onTap: Get.to(ontap[index]),
                                 image: image[index],
                               ),
                             ),
                             // Text( controller.listData!.results![index].name.toString(),
                             Text(item.modules![index].name.toString(),
                               style: TextStyle(
                                 color: CustomColors.deepGray,
                                 fontSize: 14.sp,
                                 height: 1.5,
                               ),)
                             // Text(item.modules![index].name.toString())
                             // Text(item.modules![index].name.toString())
                           ],
                         ),
                       );
                     },
                   ),
                     ),
                 )
               /* c.obx(
                        (data) => ListView.builder(
                      scrollDirection: Axis.horizontal,

                      padding: EdgeInsets.all(8),
                      // itemCount: data!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width*0.25,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: (){
                                  Get.to(SearchFlightView());
                                },
                                child: TopIcon(
                                  color: colors[index],
                                  // onTap: Get.to(ontap[index]),
                                  image: image[index],
                                ),
                              ),
                              Text(
                                data![index]['name']['title'],
                                style: TextStyle(
                                color: CustomColors.deepGray,
                                fontSize: 14.sp,
                                height: 1.5,
                              ),)
                            ],
                          ),
                        );
                      },
                    ),
                    onError: (error) => Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('koch to galt he :  ${error.toString()}'),
                      ),
                    )),*/

            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => rounded_container_height * 2;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}


// class Bottom_Home_View extends StatefulWidget {
//   const Bottom_Home_View({Key? key}) : super(key: key);
//
//   @override
//   _Bottom_Home_ViewState createState() => _Bottom_Home_ViewState();
// }
//
// class _Bottom_Home_ViewState extends State<Bottom_Home_View> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }