import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/input_decoration.dart';
import 'package:go_tour/app/modules/HotelDetails/components/image_swiper_component.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../controllers/process_to_pay_controller.dart';

class ProcessToPayView extends GetView<ProcessToPayController> {
  final titleStyle = TextStyle(
    fontSize: 14,
    color: CustomColors.deepGray,
    height: 1,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pan Pacific Hotel'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ImageSwiperComponent(images: controller.images),
            SizedBox(height: 16),
            buildFormSection(context),
          ],
        ),
      ),
    );
  }

  Widget buildFormSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Pan Pacific Hotel',
              style: TextStyle(
                  color: CustomColors.gray,
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Icon(
              Icons.star,
              color: CustomColors.secondary,
              size: 14,
            ),
            Text(
              '4.9 (5.6k reviews)',
              style: TextStyle(color: CustomColors.deepGray, height: 1.5),
            )
          ],
        ),
        Text("Dhaka, Bangladesh",
            style: TextStyle(
                color: CustomColors.deepGray, height: 1.5, fontSize: 12)),
        SizedBox(height: 32),
        Text('Name', textAlign: TextAlign.start, style: titleStyle),
        SizedBox(height: 12),
        TextFormField(
          controller: controller.nameController,
          decoration: CommonDecoration.inputdecoration('Name'),
        ),
        SizedBox(height: 24),
        Text('Email Address', textAlign: TextAlign.start, style: titleStyle),
        SizedBox(height: 12),
        TextFormField(
          controller: controller.emailController,
          decoration: CommonDecoration.inputdecoration('Email Address'),
        ),
        SizedBox(height: 24),
        Text('Phone Number', textAlign: TextAlign.start, style: titleStyle),
        SizedBox(height: 12),
        IntlPhoneField(
          controller: controller.phoneController,
          decoration: CommonDecoration.inputdecoration('Phone Number')
              .copyWith(counter: SizedBox()),
          showDropdownIcon: false,
          initialCountryCode: 'IN',
          onChanged: (phone) {
            print(phone.completeNumber);
          },
        ),
        SizedBox(height: 24),
        Text('Room’s Required', textAlign: TextAlign.start, style: titleStyle),
        SizedBox(height: 12),
        Row(
          children: [
            guestFieldSelect(context),
            SizedBox(width: 15),
            roomFieldWidget()
          ],
        ),
        SizedBox(height: 32),
        Center(
          child: OutlinedButton(
            style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: CustomColors.primary,
                fixedSize: Size(Get.width, 56)),
            onPressed: () {
              Get.toNamed(Routes.CHECKOUT);
            },
            child: Text('Process to Pay',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w500, height: 1.5)),
          ),
        )
      ],
    );
  }

  Widget roomFieldWidget() {
    return Flexible(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipOval(
              child: Material(
                child: InkWell(
                  onTap: controller.minue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.remove,
                        size: 18, color: CustomColors.primary),
                  ),
                ),
              ),
            ),
            Obx(() => Text(
                  "${controller.quantity.value} Rooms",
                  style: TextStyle(fontSize: 14, color: CustomColors.gray),
                )),
            ClipOval(
              child: Material(
                child: InkWell(
                  onTap: controller.add,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Icon(Icons.add, size: 18, color: CustomColors.primary),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget guestFieldSelect(BuildContext context) {
    return Flexible(
      child: DropdownButtonFormField<String>(
        value: controller.guestField,
        decoration:
            CommonDecoration.inputdecoration('Guest').copyWith(isDense: true),
        onTap: () async {
          FocusScope.of(context).requestFocus(FocusNode());
          SystemChannels.textInput.invokeMethod('TextInput.hide');
        },
        onChanged: (value) {},
        validator: (value) => value == null ? 'field required' : null,
        isDense: true,
        isExpanded: true,
        items: ['1 Guest', '2 Guest', '3 Guest', '4 Guest']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
              value: value, child: Text('${value}'));
        }).toList(),
      ),
    );
  }
}
