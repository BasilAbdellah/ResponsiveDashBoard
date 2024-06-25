import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image, this.imageBackGroundColor, this.imageColor});
  final String image ;
  final Color? imageBackGroundColor,imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration:  ShapeDecoration(
              color: imageBackGroundColor ?? const Color(0xffF1F1F1),
              shape: const OvalBorder()
          ),
          child: SvgPicture.asset(image,
          colorFilter: ColorFilter.mode(imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn) ,
          ),
        ),
         Icon(Icons.arrow_forward_ios,
          color: imageColor == null ? const Color(0xff064061) : Colors.white,)
      ],
    );
  }
}
