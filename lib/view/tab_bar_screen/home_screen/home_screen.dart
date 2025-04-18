import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../shared/resources/color_manager.dart';
import '../../../shared/resources/font_manager.dart';
import '../../../shared/resources/spaces_manager.dart';
import '../../../shared/resources/style_manager.dart';

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
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: getMediumTextStyle(color: ColorManager.kPrimary),
                      ),
                      Text(
                        'Wins',
                        style: getRegulerTextStyle(color: ColorManager.kDarkGrey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 1,
                  color:ColorManager.kBottomBarColor ,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: getMediumTextStyle(color: ColorManager.kPrimary),
                      ),
                      Text(
                        'Wins',
                        style: getRegulerTextStyle(color: ColorManager.kDarkGrey),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 1,
                  color:ColorManager.kBottomBarColor ,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        '0',
                        style: getMediumTextStyle(color: ColorManager.kPrimary),
                      ),
                      Text(
                        'Wins',
                        style: getRegulerTextStyle(color: ColorManager.kDarkGrey),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: PaddingManager.kPadding*2,
            ),


            //Empty Cell
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'Game History',
                style: getBoldTextStyle(color: ColorManager.kPrimary),
              ),
            ),
            const SizedBox(
              height: PaddingManager.kPadding/2,
            ),
            Container(
              height: 150,
              alignment: AlignmentDirectional.center,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorManager.kGameHistoryCellColor,
                borderRadius: BorderRadiusDirectional.circular(PaddingManager.kPadding/2)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empty',
                    style: getMediumTextStyle(color: ColorManager.kPrimary),
                  ),
                  Text(
                    'Play Some Games',
                    style: getMediumTextStyle(color: ColorManager.kDarkGrey),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: PaddingManager.kPadding/2,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(
                'ScoreBoard',
                style: getBoldTextStyle(color: ColorManager.kPrimary),
              ),
            ),
            Container(
              height: 150,
              alignment: AlignmentDirectional.center,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorManager.kGameHistoryCellColor,
                  borderRadius: BorderRadiusDirectional.circular(PaddingManager.kPadding/2)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Empty',
                    style: getMediumTextStyle(color: ColorManager.kPrimary),
                  ),
                  Text(
                    'Start Playing Folks',
                    style: getMediumTextStyle(color: ColorManager.kDarkGrey),
                  )
                ],
              ),
            ),




          ],
        ),
      ),
    );
  }
}
