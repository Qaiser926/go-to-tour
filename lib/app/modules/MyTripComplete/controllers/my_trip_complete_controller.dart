import 'package:get/get.dart';
import 'package:go_tour/app/modules/MyTripComplete/model/trip_model.dart';

class MyTripCompleteController extends GetxController {
  var selectedItem = 0.obs;
  var trips = <TripModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    var _now = DateTime.now().toIso8601String();

    trips.value = List.generate(
      10,
          (index) => TripModel(
          id: index,
          title: 'this is trip title $index',
          checkIn: _now,
          checkOut: _now,
          image: 'assets/images/my_trip.png'),
    );
  }
}
