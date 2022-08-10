import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/dash_line_painter.dart';
import 'package:go_tour/app/components/dol_durma_clipper.dart';
import 'package:go_tour/app/modules/home/controllers/home_controller.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';

class FlightCardComponent extends StatefulWidget {
   FlightCardComponent({Key? key}) : super(key: key);

  @override
  State<FlightCardComponent> createState() => _FlightCardComponentState();
}

class _FlightCardComponentState extends State<FlightCardComponent> {
  // final homeController=Get.find<HomeController>();


   HomeController homeController=Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Obx(() =>   ListView.builder(
      itemCount:
      homeController.modal.value.featuredFlights!.length,
      itemBuilder: (context,index){
        return   ClipPath(
          clipper: DolDurmaClipper(holeRadius: 20),
          child: InkWell(
              onTap: () => Get.toNamed(Routes.SELECT_SEAT),
              child:    Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: CustomColors.primary,
                  ),
                  child:Obx(()
                  {
                    if (homeController.isLoading.value) {
                      return Center(child: const CircularProgressIndicator());
                    }
                      if (homeController.isEmptyData.value) {
                      return Center(
                          child: InkWell(
                            onTap: () {},
                            child: const Text("No Data Found"),
                          ));
                    }
                    return
                      ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          separatorBuilder: (c,i){
                            return Text('a');
                          },
                          // itemCount: homeController.modal.value.featuredFlights!.length,
                          itemCount: 10,
                          // itemBuilder: (_, int index) => FlightCardComponent(),
                          itemBuilder: (_, int index) =>  Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child:   Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _cardHeader(),
                                  Container(
                                      margin: const EdgeInsets.symmetric(vertical: 12),
                                      height: 1,
                                      color: const Color(0xffE5E5E5)),
                                  _cardBody(),
                                  _lineWithBus(),
                                  _cardFooter(),
                                ],
                              ),
                            ),

                          )
                      );
                  }
                  )

                /* ListView.builder(
        itemCount: homeController.modal.value.featuredFlights!.length,
          itemBuilder: (context,index){
            final listData=homeController.modal.value.featuredFlights![index];
            return  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // _cardHeader(),
                Text('asdf'),

                Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    height: 1,
                    color: const Color(0xffE5E5E5)),
                _cardBody(),
                _lineWithBus(),
                _cardFooter(),
              ],
            );
          },
        )*/
              )

          ),
        );
      },
    )
    );

  }

   // Container(
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

  Padding _cardFooter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('\$100',
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
            children: const [
              Icon(Icons.error, color: CustomColors.primary, size: 10),
              SizedBox(width: 4),
              Text('Flight Info',
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

  Padding _cardBody() {
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

  Padding _cardHeader() {
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
                'to',
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
          Image.asset(
            'assets/icons/airways.png',
            height: 28,
            width: 68,
            fit: BoxFit.fill,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Comilla',
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
