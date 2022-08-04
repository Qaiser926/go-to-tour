import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/input_decoration.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../controllers/select_seat_controller.dart';

class SelectSeatView extends GetView<SelectSeatController> {
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

  Widget _bottomSeet(BuildContext context) {
    return DraggableScrollableSheet(
      maxChildSize: 0.9,
      initialChildSize: 0.5,
      builder: (_, ctr) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: ListView(
            controller: ctr,
            children: [
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Image.asset('assets/icons/airways.png',
                        height: 20, width: 45),
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
              ),
              SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(height: 1, color: CustomColors.borderLine),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First Class',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1,
                              color: CustomColors.deepGray),
                        ),
                        Text(
                          'Seat 5D',
                          style: TextStyle(
                              fontSize: 30,
                              height: 1.33,
                              fontWeight: FontWeight.w500,
                              color: CustomColors.gray),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Boeing',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              height: 1.5,
                              color: CustomColors.gray),
                        ),
                        Text(
                          'Seat 5D',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: CustomColors.deepGray),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(24),
                color: CustomColors.borderLine,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Benefits'),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset('assets/icons/dish.svg',
                            color: CustomColors.deepGray,
                            width: 20,
                            height: 20),
                        SvgPicture.asset('assets/icons/dish.svg',
                            color: CustomColors.deepGray,
                            width: 20,
                            height: 20),
                        SvgPicture.asset('assets/icons/dish.svg',
                            color: CustomColors.deepGray,
                            width: 20,
                            height: 20),
                        SvgPicture.asset('assets/icons/dish.svg',
                            color: CustomColors.deepGray,
                            width: 20,
                            height: 20),
                        SvgPicture.asset('assets/icons/dish.svg',
                            color: CustomColors.deepGray,
                            width: 20,
                            height: 20),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name', textAlign: TextAlign.start, style: titleStyle),
                    SizedBox(height: 12),
                    TextFormField(
                      controller: controller.nameController,
                      decoration: CommonDecoration.inputdecoration('Name'),
                    ),
                    SizedBox(height: 24),
                    Text('Email Address',
                        textAlign: TextAlign.start, style: titleStyle),
                    SizedBox(height: 12),
                    TextFormField(
                      controller: controller.emailController,
                      decoration:
                          CommonDecoration.inputdecoration('Email Address'),
                    ),
                    SizedBox(height: 24),
                    Text('Phone Number',
                        textAlign: TextAlign.start, style: titleStyle),
                    SizedBox(height: 12),
                    IntlPhoneField(
                      controller: controller.phoneController,
                      decoration:
                          CommonDecoration.inputdecoration('Phone Number')
                              .copyWith(counter: SizedBox()),
                      showDropdownIcon: false,
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    SizedBox(height: 24),
                    Text('Flight Type',
                        textAlign: TextAlign.start, style: titleStyle),
                    SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: controller.guestField,
                      decoration: CommonDecoration.inputdecoration('Guest'),
                      onTap: () async {
                        FocusScope.of(context).requestFocus(FocusNode());
                        SystemChannels.textInput.invokeMethod('TextInput.hide');
                      },
                      onChanged: (value) {},
                      validator: (value) =>
                          value == null ? 'field required' : null,
                      isDense: true,
                      isExpanded: true,
                      items: ['1 Guest', '2 Guest', '3 Guest', '4 Guest']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text('${value}'));
                      }).toList(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                child: OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: CustomColors.primary,
                      fixedSize: Size(Get.width, 56)),
                  onPressed: () {
                    Get.offNamed(Routes.TICKET_DETAILS);
                  },
                  child: Text('Book Now',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.5)),
                ),
              )
            ],
          ),
        );
      },
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

  Widget _buildSeatRow(BuildContext context) {
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
                  builder: (_) => _bottomSeet(context),
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
