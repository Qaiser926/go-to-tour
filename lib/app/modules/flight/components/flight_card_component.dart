import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/dash_line_painter.dart';
import 'package:go_tour/app/components/dol_durma_clipper.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';

class FlightCardComponent extends StatelessWidget {
   FlightCardComponent({Key? key}) : super(key: key);

  final homeController=Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(

      width: Get.size.width,
      height: Get.size.height,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: homeController.modal.value.featuredFlights!.length,
        itemBuilder: (context,index){
          final listData=homeController.modal.value.featuredFlights![index];
          return ClipPath(
            clipper: DolDurmaClipper(holeRadius: 25),
            child: InkWell(
              onTap: () => Get.toNamed(Routes.SELECT_SEAT),

              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _cardHeader(index),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 12),
                          height: 1,
                          color: const Color(0xffE5E5E5)),
                      _cardBody(index),
                      _lineWithBus(),
                      _cardFooter(index),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Container _lineWithBus() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Color(0xffE5E9EC)),
                    shape: BoxShape.circle,
                    color: Color(0xff8C9EA8)),
              ),
              Flexible(
                child: CustomPaint(
                  painter: DashedLinePainter(),
                  child: SizedBox(width: double.infinity, height: 1),
                ),
              ),
              Container(
                height: 14,
                width: 14,
                decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Color(0xffE5E9EC)),
                    shape: BoxShape.circle,
                    color: Color(0xff8C9EA8)),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset('assets/icons/bus.svg'),
          )
        ],
      ),
    );
  }

  Padding _cardFooter(int index) {
    final listData=homeController.modal.value.featuredFlights![index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('\$${listData.price.toString()}',
                  style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                    color: CustomColors.green,
                  )),
              SizedBox(width: 4),
              Text('Ticket price',
                  style: TextStyle(
                    fontSize: 8,
                    height: 1.5,
                    color: CustomColors.deepGray,
                  )),
            ],
          ),
          Row(
            children:  [
              Icon(Icons.error, color: CustomColors.primary, size: 10),
              SizedBox(width: 4),
              // Text('Flight Info',
              Text(listData.desc.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    height: 1.2,
                    color: CustomColors.deepGray,
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Padding _cardBody(int index) {
    final listData=homeController.modal.value.featuredFlights![index];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Depart',
                style: TextStyle(
                  color: CustomColors.deepGray,
                  height: 1.5,
                  fontSize: 12,
                ),
              ),
              Text(
                '8:30 AM',
                style: TextStyle(
                  color: CustomColors.gray,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ],
          ),
          Text(
            '06 h 21 m',
            style: TextStyle(
                height: 1.67, fontSize: 12, color: CustomColors.deepGray),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Seat Left',
                style: TextStyle(
                  color: CustomColors.deepGray,
                  height: 1.5,
                  fontSize: 12,
                ),
              ),
              Text(
                '25',
                style: TextStyle(
                  color: CustomColors.gray,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding _cardHeader(int data) {
    final myData=homeController.modal.value.featuredFlights![data];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                homeController.modal.value.featuredFlights![data].to.toString(),
                style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '(COM)',
                style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.network(
            myData.thumbnail.toString(),
            height: 28,
            width: 68,
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                myData.from.toString(),
                style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '(COM)',
                style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
