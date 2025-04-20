import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/resources/color_manager.dart';
import '../../../shared/resources/font_manager.dart';
import '../../../shared/resources/spaces_manager.dart';
import '../../../shared/resources/style_manager.dart';
import 'widgets/game_history_cell.dart';
import 'widgets/score_board_cell.dart';
import 'widgets/wins_lose_draws.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.kPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(ColorManager.kBottomBarColor)
                  ),
                    onPressed: (){}, 
                    child: Text(
                  'LogOut',
                  style: getMediumTextStyle(color: ColorManager.kPrimary,fontSize: FontSizeManager.fs18.sp),
                ))
              ],
            ),
            const SizedBox(
              height: PaddingManager.kPadding,
            ),
            Text(
              'Welcome',
              style: getMediumTextStyle(color: ColorManager.kPrimary,fontSize: FontSizeManager.fs18.sp),
            ),
            const SizedBox(
              height: PaddingManager.kPadding/4,
            ),
            Text(
              'Qusai Jamous',
              style: getMediumTextStyle(color: ColorManager.kPrimary,fontSize: FontSizeManager.fs22.sp),
            ),
            const SizedBox(
              height: PaddingManager.kPadding*1.5,
            ),
            //Wins And Loses Widgets

           const  WinsLoseDraws(),

            const SizedBox(
              height: PaddingManager.kPadding*2,
            ),


            //Empty Cell
            const GameHistoryCell(),
            const SizedBox(
              height: PaddingManager.kPadding/2,
            ),
            const ScoreBoardCell(),




          ],
        ),
      ),
    );
  }
}
