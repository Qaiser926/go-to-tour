import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_tour/app/components/button.dart';
import 'package:go_tour/app/routes/app_pages.dart';
import 'package:go_tour/constants/custom_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabSectionComponent extends StatefulWidget {

   TabSectionComponent({Key? key}) : super(key: key);

  dynamic argumentData = Get.arguments;
  @override
  _TabSectionComponentState createState() => _TabSectionComponentState();
}

class _TabSectionComponentState extends State<TabSectionComponent> {
  var _index = 0;

  final iconsList = [
    'home.svg',
    'parking.svg',
    'wifi-signal.svg',
    'generator.svg',
    'atm.svg',
    'air-condition.svg',
    'home.svg',
    'parking.svg',
    'wifi-signal.svg',
    'generator.svg',
    'atm.svg',
    'air-condition.svg'
  ];
  late List<Widget> children;

  @override
  void initState() {
    super.initState();

    children = [
      _buildDetails(),
      _buildFacilities(),
      _reviews(),
      Text("dfjghhdjhjgd"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildTabBtn(0, 'Details', _index == 0),
            buildTabBtn(1, 'Facilities', _index == 1),
            buildTabBtn(2, 'Reviews', _index == 2),
            Spacer(),
            buildTabBtn(3, 'Direction', _index == 3),
          ],
        ),
        SizedBox(height: 20),
        children[_index],
      ],
    );
  }

  Widget _reviews() {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: CustomColors.secondary,
              size: 14,
            ),
            SizedBox(width: 8),
            Text(
              '4.9 (5.6k reviews)',
              style: TextStyle(color: CustomColors.deepGray, height: 1.5),
            ),
          ],
        ),
        SizedBox(height: 20),
        _singleRating(),
        _singleRating(),
        _singleRating(),
        _singleRating(),
      ],
    );
  }

  Widget _singleRating() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Ratul Khan - 2 weeks ago',
                style: TextStyle(fontSize: 8, color: CustomColors.primary)),
            RatingBarIndicator(
              rating: 2.75,
              itemBuilder: (context, index) =>
                  Icon(Icons.star, color: Colors.amber),
              itemCount: 5,
              itemSize: 10.0,
              direction: Axis.horizontal,
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          '“Monotonectally transform premium convergence without client-centered leadership skills. Holisticly deploy resourc maximizing installed base”',
          style: TextStyle(fontSize: 12, height: 1.6, color: CustomColors.gray),
        ),
        SizedBox(height: 12),
      ],
    );
  }

  Widget _buildFacilities() {
    return Column(
      children: [
        Wrap(
          spacing: 35,
          runSpacing: 35,
          children: iconsList
              .map(
                (icon) => Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                      color: CustomColors.softGray,
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    'assets/icons/' + icon,
                    height: 24,
                    width: 24,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              )
              .toList(),
        ),
        SizedBox(height: 25),
        Container(
          padding: const EdgeInsets.all(6),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              SizedBox(width: 14),
              Text(
                '\$120/',
                style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.3),
              ),
              Text('night', style: TextStyle(fontSize: 12)),
              Spacer(),
              Button(
                title: 'Book Now',
                onTap: () => Get.toNamed(Routes.PROCESS_TO_PAY),
                height: 48.h,
                width: 120.w,
              ),
            ],
          ),
        )
      ],
    );
  }

  Column _buildDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
       Text('yaha par description he'),
        SizedBox(height: 25),
        Container(
          padding: const EdgeInsets.all(6),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.ideographic,
            children: [
              SizedBox(width: 14),
              Text(
                '\$120/',
                style: TextStyle(
                    color: CustomColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.3),
              ),
              Text('night', style: TextStyle(fontSize: 12)),
              Spacer(),
              Button(
                title: 'Book Now',
                onTap: () => Get.toNamed(Routes.PROCESS_TO_PAY),
                height: 48.h,
                width: 120.w,
              ),
            ],
          ),
        )
      ],
    );
  }

  InkWell buildTabBtn(int i, String text, bool isSelected) {
    return InkWell(
      onTap: () {
        if (i == 3) {
          Get.toNamed(Routes.MAP);
          return;
        }
        _index = i;

        setState(() {});
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              text,
              style: TextStyle(
                  color: isSelected ? CustomColors.primary : Colors.black),
            ),
          ),
          SizedBox(height: 8),
          ClipOval(
            child: Container(
              height: 5,
              width: 5,
              color: isSelected ? CustomColors.primary : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
