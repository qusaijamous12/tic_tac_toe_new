import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/font_manager.dart';
import '../resources/image_manger.dart';
import '../resources/spaces_manager.dart';
import '../resources/style_manager.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String image;
  const MyButton({super.key,required this.onTap,required this.title,required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        padding:const EdgeInsetsDirectional.all(PaddingManager.kPadding/1.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(PaddingManager.kPadding/2),
            border: Border.all(
                color: Colors.white
            )
        ),
        child: Row(
          spacing: PaddingManager.kPadding/2,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image,width: 24.w,height: 24.h,),
            Text(
              title,
              style: getRegulerTextStyle(color: Colors.white,fontSize: FontSizeManager.fs16.sp),
            )


          ],
        ),
      ),
    );
  }
}
