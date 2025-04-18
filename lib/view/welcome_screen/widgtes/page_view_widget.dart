import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../model/on_board_model.dart';
import '../../../shared/resources/color_manager.dart';
import '../../../shared/resources/font_manager.dart';
import '../../../shared/resources/spaces_manager.dart';
import '../../../shared/resources/style_manager.dart';

class BuildPageViewWidget extends StatelessWidget {
  final OnBoardModel model;
  const BuildPageViewWidget({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          model.image,
          width: 200.w,
          height: 200.h,
        ),
        const SizedBox(height: PaddingManager.kPadding * 4),
        Text(
          model.title,
          style: getMediumTextStyle(
            color: ColorManager.kPrimary,
            fontSize: FontSizeManager.fs22.sp,
          ),
        ),
        const SizedBox(height: PaddingManager.kPadding / 1.5),
        Text(
          model.subTitle,
          textAlign: TextAlign.center,
          style: getRegulerTextStyle(
            color: ColorManager.kPrimary,
            fontSize: FontSizeManager.fs20.sp,
          ),
        ),
      ],
    );
  }
}
