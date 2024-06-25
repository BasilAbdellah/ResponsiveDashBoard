import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_image.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            color: const Color(0xff4DB7F2),
            image: const DecorationImage(image: AssetImage(Assets.imagesCardBackground)),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
