import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/DetailedIncomeChart.dart';
import 'package:responsive_dash_board/widgets/IncomeChart.dart';
import 'package:responsive_dash_board/widgets/IncomeDetails.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
   ? const Expanded(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: DetailedIncomeChart(),
        ))
        : const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex:2,child: IncomeDetails())
      ],
    );

  }
}
