import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/modules/map/components/map_custom_icon.dart';
import 'package:go_tour/app/modules/map/components/search_text_form_field.dart';
import 'package:go_tour/app/modules/map/controllers/map_controller.dart'
    as getX;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/constants/strings.dart';
import 'package:latlong2/latlong.dart';

class MapView extends GetView<getX.MapController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map Direction'),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(child: mapView()),
          secondLayer(),
        ],
      ),
    );
  }

  FlutterMap mapView() {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09),
        zoom: 15.0,
        minZoom: 5.0,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: Strings.integrationUrl,
          additionalOptions: {
            'accessToken': Strings.mapAccessToken,
            'id': Strings.mapId,
          },
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 60,
              height: 60,
              point: LatLng(51.5, -0.09),
              builder: (ctx) => Container(
                margin: EdgeInsets.only(bottom: 30),
                child: SvgPicture.asset('assets/images/pin.svg'),
              ),
            ),
            Marker(
              width: 40,
              height: 50,
              point: LatLng(51.4, -0.09),
              builder: (ctx) => Container(
                child: SvgPicture.asset('assets/images/my_lcoation.svg'),
              ),
            ),
          ],
        ),
        PolylineLayerOptions(
          polylines: [
            Polyline(
              points: [LatLng(51.5, -0.09), LatLng(51.4, -0.09)],
              strokeWidth: 5,
              gradientColors: [
                Color(0xFF4FDCCF),
                Color(0xFF606FF3),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Padding secondLayer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextFormField(
            controller: controller.searchTextEditController,
          ),
          mapIcons(),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 54,
              width: 54,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  color: CustomColors.white, shape: BoxShape.circle),
              child: Icon(Icons.gps_fixed, color: CustomColors.primary),
            ),
          ),
          bottomWidget(),
        ],
      ),
    );
  }

  Container bottomWidget() {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: CustomColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pan Pacific Hotel',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.sp,
              color: CustomColors.gray,
            ),
          ),
          RichText(
            softWrap: true,
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: Icon(
                    Icons.location_pin,
                    size: 14.r,
                    color: CustomColors.primary,
                  ),
                ),
                TextSpan(
                  text: "  Karwan Bazar, Dhaka 1212",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: CustomColors.deepGray,
                    height: 2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.directions_walk_sharp,
                      size: 14.r,
                      color: CustomColors.white,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: CustomColors.blue,
                    ),
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    "  800m away",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: CustomColors.deepGray,
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.star,
                      color: CustomColors.secondary,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    height: 25,
                    width: 25,
                  ),
                  Text(
                    "  4.9 (5.6k reviews)",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: CustomColors.deepGray,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Button(
            title: 'Book Now',
            onTap: () {},
            width: Get.width,
            height: 50.h,
          ),
        ],
      ),
    );
  }

  Widget mapIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MapCustomIcon(
          color: CustomColors.secondary.withOpacity(0.2),
          iconPath: 'assets/images/bus.svg',
        ),
        MapCustomIcon(
          color: CustomColors.red.withOpacity(0.2),
          iconPath: 'assets/images/car.svg',
        ),
        MapCustomIcon(
          color: CustomColors.bikeColor.withOpacity(0.2),
          iconPath: 'assets/images/bike.svg',
        ),
        MapCustomIcon(
          color: CustomColors.primary.withOpacity(0.2),
          iconPath: 'assets/images/disabled_person.svg',
        ),
        MapCustomIcon(
          color: CustomColors.speedCardColor.withOpacity(0.2),
          iconPath: 'assets/images/speed_car.svg',
        ),
      ],
    );
  }
}
