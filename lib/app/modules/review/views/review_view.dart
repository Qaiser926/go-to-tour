import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:go_tour/app/components/input_decoration.dart';
import 'package:go_tour/constants/custom_colors.dart';

import '../controllers/review_controller.dart';

class ReviewView extends GetView<ReviewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Reviews'), centerTitle: true),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rate Your Stay',
            style: TextStyle(
                color: CustomColors.gray,
                fontSize: 18,
                height: 1.5,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 14),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemBuilder: (context, _) =>
                Icon(Icons.star, color: CustomColors.secondary),
            onRatingUpdate: (rating) {
              print(rating);
              controller.rating(rating);
            },
          ),
          SizedBox(height: 34),
          Text(
            'Your Review',
            style: TextStyle(
                color: CustomColors.gray,
                fontSize: 16,
                height: 1.5,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 10),
          TextFormField(
            controller: controller.reviewText,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            minLines: 8,
            decoration: CommonDecoration.inputdecoration(
                'Write your stay experience here'),
          ),
          Spacer(),
          Center(
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  primary: CustomColors.primary,
                  fixedSize: Size(Get.width, 56)),
              onPressed: () {},
              child: Text('Submit Review',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500, height: 1.5)),
            ),
          ),
          // SizedBox(height: 40),
        ],
      ),
    );
  }
}
