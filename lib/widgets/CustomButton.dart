import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.background, this.textcolor, this.text});

  final Color? background , textcolor;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            ),
            elevation:0,
           backgroundColor: background ?? const Color(0xff4EB7F2)
          ),
          onPressed: (){},
          child: Text( text??"Send Money" , style: AppStyles.styleSemiBold18(context).copyWith(
            color: textcolor
          ),)
      ),
    );
  }
}
