import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/AdaptiveLayoutDesign.dart';
import 'package:responsive_dash_board/widgets/DesktopLayout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
       body:  AdaptiveLayout(mobileLayout: (context) => DesktopLayout(),
          tabletLayout: (context) => DesktopLayout(),
          desktopLayout: (context) => DesktopLayout(),)
    );
  }
}
