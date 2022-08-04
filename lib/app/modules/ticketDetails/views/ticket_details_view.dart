import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/dash_line_painter.dart';
import 'package:go_tour/app/components/dol_durma_clipper.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';

import '../controllers/ticket_details_controller.dart';

class TicketDetailsView extends GetView<TicketDetailsController> {
  final titleStyle = TextStyle(
    fontSize: 14,
    color: CustomColors.deepGray,
    height: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primary,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Select Seat'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: _buildBackground(
        Column(
          children: [
            SizedBox(height: 40),
            Text('PREMIUM'),
            SizedBox(height: 16),
            _buildHeaderLogo(),
            SizedBox(height: 25),
            ...List.generate(10, (index) => _buildSeatRow(context)).toList(),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  Widget _bottomSeet() {
    return DraggableScrollableSheet(
        maxChildSize: 0.9,
        initialChildSize: 0.5,
        builder: (context, ctr) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ClipPath(
              clipper: DolDurmaClipper(holeRadius: 20, heightFactor: 2.8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: ListView(
                  controller: ctr,
                  children: [
                    SizedBox(height: 24),
                    sheetHeader(),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child:
                          Container(height: 1, color: CustomColors.borderLine),
                    ),
                    sheetSingleTravelItem(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CustomPaint(
                        painter: DashedLinePainter(),
                        child: SizedBox(width: double.infinity, height: 1),
                      ),
                    ),
                    sheetSingleTravelItem(),
                    // SizedBox(height: 24),
                    sheetTravelType(),
                    SizedBox(height: 10),
                    sheetTable(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sunday',
                                style: TextStyle(
                                  color: CustomColors.deepGray,
                                  fontSize: 12,
                                  height: 1.67,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomPaint(
                                    painter: DashedLinePainter(),
                                    child: SizedBox(
                                        width: double.infinity, height: 1),
                                  ),
                                ),
                              ),
                              Text(
                                '\$700',
                                style: TextStyle(
                                  color: CustomColors.deepGray,
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sunday',
                                style: TextStyle(
                                  color: CustomColors.deepGray,
                                  fontSize: 12,
                                  height: 1.67,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomPaint(
                                    painter: DashedLinePainter(),
                                    child: SizedBox(
                                        width: double.infinity, height: 1),
                                  ),
                                ),
                              ),
                              Text(
                                '\$700',
                                style: TextStyle(
                                  color: CustomColors.deepGray,
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Sunday',
                                style: TextStyle(
                                  color: CustomColors.deepGray,
                                  fontSize: 12,
                                  height: 1.67,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CustomPaint(
                                    painter: DashedLinePainter(),
                                    child: SizedBox(
                                        width: double.infinity, height: 1),
                                  ),
                                ),
                              ),
                              Text(
                                '\$700',
                                style: TextStyle(
                                  color: CustomColors.deepGray,
                                  fontSize: 16,
                                  height: 1.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 15),
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                            onPrimary: Colors.white,
                            primary: CustomColors.primary,
                            fixedSize: Size(Get.width, 56)),
                        onPressed: () {
                          Get.offNamed(Routes.CHECKOUT);
                        },
                        child: Text('Process to Pay',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 1.5)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Padding sheetTable() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 25),
      child: CustomPaint(
        painter: DashedLinePainter(),
        child: SizedBox(width: double.infinity, height: 1),
      ),
    );
  }

  Container sheetTravelType() {
    return Container(
      color: Color(0xffF8F9FA),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Passengers',
                style: TextStyle(
                    fontSize: 12, height: 1.67, color: CustomColors.deepGray),
              ),
              SizedBox(height: 4),
              Text(
                'Kim Denver',
                style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.gray),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Passengers',
                style: TextStyle(
                    fontSize: 12, height: 1.67, color: CustomColors.deepGray),
              ),
              SizedBox(height: 4),
              Text(
                'Kim Denver',
                style: TextStyle(
                    fontSize: 18,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.gray),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding sheetSingleTravelItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aug 22',
                style: TextStyle(
                    fontSize: 14, height: 1.67, color: CustomColors.deepGray),
              ),
              SizedBox(height: 6),
              Text(
                '08:30',
                style: TextStyle(
                    fontSize: 30,
                    height: 1.33,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.gray),
              ),
              Text(
                'Dhaka',
                style: TextStyle(
                    fontSize: 14, height: 1.67, color: CustomColors.gray),
              ),
            ],
          ),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '10 h 21 m',
                  style: TextStyle(
                      fontSize: 14, height: 1.67, color: CustomColors.deepGray),
                ),
                SizedBox(height: 12),
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.hardEdge,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Center(
                        child: CustomPaint(
                          painter: DashedLinePainter(),
                          child: SizedBox(width: double.infinity, height: 1),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: SvgPicture.asset('assets/icons/plane.svg',
                          color: CustomColors.deepGray, width: 20, height: 20),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Aug 22',
                style: TextStyle(
                    fontSize: 14, height: 1.67, color: CustomColors.deepGray),
              ),
              SizedBox(height: 6),
              Text(
                '08:30',
                style: TextStyle(
                    fontSize: 30,
                    height: 1.33,
                    fontWeight: FontWeight.w500,
                    color: CustomColors.gray),
              ),
              Text(
                'Dhaka',
                style: TextStyle(
                    fontSize: 14, height: 1.67, color: CustomColors.gray),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding sheetHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Image.asset('assets/icons/airways.png', height: 20, width: 45),
          SizedBox(width: 6),
          Text(
            'World Airways',
            style: TextStyle(
                color: CustomColors.primary,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                height: 1.5),
          )
        ],
      ),
    );
  }

  Row _buildHeaderLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/icons/dish.svg'),
        SizedBox(width: 20),
        SvgPicture.asset('assets/icons/dish.svg'),
        SizedBox(width: 20),
        SvgPicture.asset('assets/icons/dish.svg'),
        SizedBox(width: 20),
        SvgPicture.asset('assets/icons/dish.svg'),
      ],
    );
  }

  Padding _buildSeatRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (_) => _bottomSeet(),
                  isScrollControlled: true,
                  enableDrag: true,
                  isDismissible: true,
                  backgroundColor: Colors.transparent,
                );
              },
              child: SvgPicture.asset(
                'assets/icons/car-seat.svg',
                alignment: Alignment.centerLeft,
                color: CustomColors.primary,
              ),
            ),
          ),
          SvgPicture.asset('assets/icons/car-seat.svg'),
          SizedBox(width: 10),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: SvgPicture.asset(
              'assets/icons/car-seat.svg',
              alignment: Alignment.centerLeft,
              color: CustomColors.deepGray,
            ),
          ),
          SvgPicture.asset('assets/icons/car-seat.svg'),
        ],
      ),
    );
  }

  ListView _buildBackground(Widget child) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(Get.width / 2)),
          ),
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 12, left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(Get.width / 2)),
                color: CustomColors.white,
              ),
              child: child,
            ),
          ),
        )
      ],
    );
  }
}
