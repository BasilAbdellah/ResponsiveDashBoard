import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_image.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            color: const Color(0xff4DB7F2),
            image: const DecorationImage(fit: BoxFit.fill,image: AssetImage(Assets.imagesCardBackground  )),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(left: 31,right: 42,top: 16)
              ,title: Text("Name Card",style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),),
              subtitle:Text("Syan Bandi",style: AppStyles.styleMedium20(context),)
              ,trailing:const Icon(Icons.photo_outlined),),
             const Expanded(child: SizedBox()),
              Padding(padding: EdgeInsets.only(right: 24)
              ,child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                Text("0918 8124 0042 8129" ,style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),),
                 Text("12/20 - 124",style: AppStyles.styleRegular16(context).copyWith(color: Colors.white),)
                
                ],),
              ),
           const  Flexible(child:  SizedBox(height: 26,))
          ],
        ),
      ),
    );
  }
}
