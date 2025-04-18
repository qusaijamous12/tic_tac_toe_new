import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/resources/color_manager.dart';
import '../../../shared/resources/font_manager.dart';
import '../../../shared/resources/image_manger.dart';
import '../../../shared/resources/spaces_manager.dart';
import '../../../shared/resources/style_manager.dart';

class LogoAndTitleWidget extends StatelessWidget {
  const LogoAndTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageManager.logo,width: 96.w,height: 83.h,),
          const SizedBox(
            height: PaddingManager.kPadding*1.5,
          ),
          Text(
            'Welcome',
            style: getMediumTextStyle(color: ColorManager.kPrimary,fontSize: FontSizeManager.fs22.sp),
          ),
          const SizedBox(
            height: PaddingManager.kPadding/4,
          ),
          Text(
            'Please sign in to continue.',
            style: getMediumTextStyle(color: ColorManager.kDarkGrey,fontSize: FontSizeManager.fs20.sp),
          ),
        ],
      ),
    );
  }
}
