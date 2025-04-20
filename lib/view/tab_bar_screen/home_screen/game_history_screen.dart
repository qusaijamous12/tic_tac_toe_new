import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../shared/resources/color_manager.dart';
import '../../../shared/resources/font_manager.dart';
import '../../../shared/resources/spaces_manager.dart';
import '../../../shared/resources/style_manager.dart';

class GameHistoryScreen extends StatelessWidget {
  const GameHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.all(
            PaddingManager.kPadding / 1.5,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: ColorManager.kPrimary,
                    ),
                  ),
                  const SizedBox(
                    height: PaddingManager.kPadding/1.5,
                  ),
                  Text(
                    'Game History',
                    style: getMediumTextStyle(color: ColorManager.kPrimary,fontSize: FontSizeManager.fs18.sp),
                  )

                ],
              ),
              const SizedBox(
                height: PaddingManager.kPadding*2,
              ),
              TextFormField(

              ),
              const SizedBox(
                height: PaddingManager.kPadding*2,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildGameHistoryField(),
                separatorBuilder:
                    (context, index) =>
                        const SizedBox(height: PaddingManager.kPadding / 2),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

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
