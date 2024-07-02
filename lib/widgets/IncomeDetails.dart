import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/IncomeDetailsModel.dart';
import 'package:responsive_dash_board/widgets/ItemDetails.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
static const Items = [
  IncomeModel(color:Color(0xff208CC8) ,title: "Design service",value:"40" ),
  IncomeModel(color:Color(0xff4EB7F2) ,title: "Design product",value:"25" ),
  IncomeModel(color:Color(0xff064061) ,title: "Product royalti",value:"20" ),
  IncomeModel(color:Color(0xffE2DECD) ,title: "Other",value:"22" ),
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: Items.map((e) =>ItemDetails(incomeModel: e,) ,).toList(),
    );
      // ListView.builder(
      // itemCount: Items.length,
      // itemBuilder: (context, index) {
      // return ItemDetails(
      //     incomeModel: Items[index]);
    //},);
  }
}

