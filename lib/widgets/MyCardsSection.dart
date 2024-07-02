import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/CustomBackGroundContainer.dart';
import 'package:responsive_dash_board/widgets/DotsIndicator.dart';
import 'package:responsive_dash_board/widgets/MyCardsPageView.dart';
import 'package:responsive_dash_board/widgets/TransactionHistory.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});



  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
   int CurrentPageIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener((){
      CurrentPageIndex= pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: CustomBackGroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 420,
              child: Text("My Card",style: AppStyles.styleSemiBold20(context),),

            ),
             const SizedBox(height: 20,),
             MyCardsPageView(pageController: pageController,),
             const SizedBox(height: 20,),
             DotsIndicator(CurrentPageIndex: CurrentPageIndex,),
             const Divider(height: 40,color: Color(0xFFF1F1F1),),
             const TransactionHistory()

          ],
        ),
      ),
    );
  }
}
