import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/modules/MyTripComplete/components/single_trip_component.dart';
import 'package:go_tour/app/modules/MyTripComplete/controllers/my_trip_complete_controller.dart';
import 'package:go_tour/app/modules/MyTripComplete/model/trip_model.dart';
import 'package:go_tour/constants/custom_colors.dart';

class MyTripCompleteView extends GetView<MyTripCompleteController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('My Trips'), centerTitle: true),
        body: Obx(
          () => ListView(
            padding: const EdgeInsets.all(8),
            children: [
              CupertinoSegmentedControl<int>(
                groupValue: controller.selectedItem.value,
                selectedColor: CustomColors.primary,
                children: {
                  0: const Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text('Upcoming')),
                  1: const Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text('Completed')),
                  2: const Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text('Cancelled')),
                },
                onValueChanged: (int index) {
                  controller.selectedItem(index);
                },
                borderColor: Colors.transparent,
              ),
              SizedBox(height: 20),
              ...controller.trips
                  .map((TripModel e) => SingleTripComponent(trip: e))
                  .toList(),
            ],
          ),
        ));
  }
}
