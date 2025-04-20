import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../shared/resources/color_manager.dart';
import '../../../../shared/resources/font_manager.dart';
import '../../../../shared/resources/spaces_manager.dart';
import '../../../../shared/resources/style_manager.dart';

class ScoreBoardCell extends StatelessWidget {
  const ScoreBoardCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'ScoreBoard',
            style: getBoldTextStyle(color: ColorManager.kPrimary),
          ),
        ),
        Container(
          height: 205,
          padding: const EdgeInsetsDirectional.all(PaddingManager.kPadding / 2),
          alignment: AlignmentDirectional.center,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorManager.kGameHistoryCellColor,
            borderRadius: BorderRadiusDirectional.circular(
              PaddingManager.kPadding / 2,
            ),
          ),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics:const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>buildScoreBoardUsers(),
                separatorBuilder: (context,index)=>const SizedBox(height: PaddingManager.kPadding/2,),
                itemCount: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildEmptyCell() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Empty', style: getMediumTextStyle(color: ColorManager.kPrimary)),
      Text(
        'Start Playing Folks',
        style: getMediumTextStyle(color: ColorManager.kDarkGrey),
      ),
    ],
  );

  Widget buildScoreBoardUsers() => Column(
    children: [
      Row(
        children: [
          const Icon(Icons.star, color: ColorManager.kYellow, size: 20),
          const SizedBox(width: PaddingManager.kPadding / 2),
          Text(
            '1. Chris Hamilton',
            style: getMediumTextStyle(
              color: ColorManager.kPrimary,
              fontSize: FontSizeManager.fs16.sp,
            ),
          ),
          const Spacer(),
          Text(
            '130',
            style: getMediumTextStyle(
              color: ColorManager.kYellow,
              fontSize: FontSizeManager.fs16.sp,
            ),
          ),
        ],
      ),
    ],
  );
}
