import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/resources/color_manager.dart';
import '../../../../shared/resources/font_manager.dart';
import '../../../../shared/resources/spaces_manager.dart';
import '../../../../shared/resources/style_manager.dart';
import '../game_history_screen.dart';

class GameHistoryCell extends StatelessWidget {
  const GameHistoryCell({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Text(
            'Game History',
            style: getBoldTextStyle(color: ColorManager.kPrimary),
          ),
        ),
        const SizedBox(height: PaddingManager.kPadding / 2),
        GestureDetector(
          onTap: (){
            Get.to(()=>const GameHistoryScreen());
          },
          child: Container(
            height: 205,
            width: double.infinity,
            padding: const EdgeInsetsDirectional.all(PaddingManager.kPadding / 2),
            decoration: BoxDecoration(
              color: ColorManager.kGameHistoryCellColor,
              borderRadius: BorderRadiusDirectional.circular(
                PaddingManager.kPadding / 2,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index)=>buildGameHistoryField(),
                    separatorBuilder: (context,index)=>const SizedBox(height: PaddingManager.kPadding/8,),
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget emptyCell() => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Empty', style: getMediumTextStyle(color: ColorManager.kPrimary)),
      Text(
        'Play Some Games',
        style: getMediumTextStyle(color: ColorManager.kDarkGrey),
      ),
    ],
  );

  Widget buildGameHistoryField() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Qusai Jamous',
            style: getMediumTextStyle(
              color: ColorManager.kPrimary,
              fontSize: FontSizeManager.fs14.sp,
            ),
          ),
          Text(
            '3.11.2002',
            style: getRegulerTextStyle(color: ColorManager.kDarkGrey),
          ),
        ],
      ),
      Text(
        'Won'.toUpperCase(),
        style: getMediumTextStyle(color: ColorManager.kGreen),
      ),
    ],
  );
}
