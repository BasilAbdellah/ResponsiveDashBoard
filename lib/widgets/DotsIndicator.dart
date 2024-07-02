import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/CustomDotsIndicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.CurrentPageIndex});
  final int CurrentPageIndex ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
        List.generate(3, (index) {
          return  Padding(padding: const EdgeInsets.only(right: 6),
          child: CustomDotsIndicator(isActive: index==CurrentPageIndex),
          );
        },)

    );
  }
}
