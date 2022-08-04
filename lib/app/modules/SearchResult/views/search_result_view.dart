import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/modules/flight/components/flight_card_component.dart';
import 'package:go_tour/constants/custom_colors.dart';

import '../controllers/search_result_controller.dart';

class SearchResultView extends GetView<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primary,
      appBar: AppBar(
        title: Text('Search Results'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: CustomColors.primary,
        ),
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          shrinkWrap: true,
          separatorBuilder: (_, int i) {
            return SizedBox(height: 16);
          },
          itemCount: 10,
          itemBuilder: (_, int index) => FlightCardComponent(),
        ),
      ),
    );
  }
}
