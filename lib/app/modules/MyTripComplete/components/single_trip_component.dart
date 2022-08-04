import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/modules/MyTripComplete/controllers/my_trip_complete_controller.dart';
import 'package:go_tour/app/modules/MyTripComplete/model/trip_model.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:go_tour/utils/utils.dart';

class SingleTripComponent extends GetView<MyTripCompleteController> {
  const SingleTripComponent({Key? key, required this.trip}) : super(key: key);

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              width: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(trip.image, fit: BoxFit.fill),
              ),
            ),
            SizedBox(width: 15),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    trip.title,
                    style: TextStyle(color: CustomColors.gray, height: 1.5),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Text(
                          'CheckIn',
                          style: TextStyle(
                              fontSize: 8,
                              height: 1.5,
                              color: CustomColors.primary),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text(
                          'CheckOut',
                          style: TextStyle(
                              fontSize: 8,
                              height: 1.5,
                              color: CustomColors.red),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Text(
                          Utils.formatDate(trip.checkIn),
                          style: TextStyle(
                              fontSize: 10, height: 1.2, color: Colors.grey),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text(
                          Utils.formatDate(trip.checkOut),
                          style: TextStyle(
                              fontSize: 10, height: 1.2, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  cardBtn(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardBtn() {
    if (controller.selectedItem.value == 1)
      return Container(
        height: 20,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: CustomColors.secondary,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.mode_edit_rounded, color: Colors.white, size: 10),
            SizedBox(width: 5),
            Text(
              'Write us a review',
              style: TextStyle(fontSize: 8, height: 1.5, color: Colors.white),
            )
          ],
        ),
      );
    if (controller.selectedItem.value == 2)
      return Container(
        height: 20,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            color: CustomColors.red, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.close, color: Colors.white, size: 10),
            SizedBox(width: 5),
            Text(
              'Cancelled',
              style: TextStyle(fontSize: 8, height: 1.5, color: Colors.white),
            )
          ],
        ),
      );
    return Row(
      children: [
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.call, color: Colors.white, size: 10),
              SizedBox(width: 5),
              Text(
                'For Help',
                style: TextStyle(fontSize: 8, height: 1.5, color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(width: 8),
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: CustomColors.red, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.directions, color: Colors.white, size: 10),
              SizedBox(width: 5),
              Text(
                'Direction',
                style: TextStyle(fontSize: 8, height: 1.5, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
