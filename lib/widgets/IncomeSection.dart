import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/widgets/IncomeSectionHeader.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          //IncomeSectionBody()
        ],
      ),
    );
  }
}

