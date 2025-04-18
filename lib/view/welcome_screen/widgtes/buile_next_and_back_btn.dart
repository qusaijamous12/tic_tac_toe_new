import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controller/welcome_screen_controller.dart';
import '../../../shared/resources/color_manager.dart';
import '../../../shared/resources/font_manager.dart';
import '../../../shared/resources/spaces_manager.dart';
import '../../../shared/resources/style_manager.dart';
import '../../login_screen/login_screen.dart';

class BuildNextAndBackBtn extends StatelessWidget {
  final PageController pageController;
  const BuildNextAndBackBtn({super.key,required this.pageController});

  @override
  Widget build(BuildContext context) {
    final _welcomeScreenController=Get.find<WelcomeScreenController>(tag: 'welcome_screen_controller');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IgnorePointer(
          ignoring: pageController.initialPage>1,
          child: TextButton(
            onPressed: () {

              pageController.previousPage(duration:const Duration(microseconds: 100), curve: Curves.linear);
            },
            child: Text(
              'Back',
              style: getBoldTextStyle(
                color: Colors.white,
                fontSize: FontSizeManager.fs20.sp,
              ),
            ),
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 3,
          axisDirection: Axis.horizontal,
          effect: SlideEffect(
            spacing: PaddingManager.kPadding / 4,
            radius: 20.0,
            dotWidth: 12.0.w,
            dotHeight: 12.0.h,
            paintStyle: PaintingStyle.stroke,
            strokeWidth: 1.5,
            dotColor: ColorManager.kDarkUnActive,
            activeDotColor: ColorManager.kBlue,
          ),
        ),
        TextButton(
          onPressed: () {


            if(_welcomeScreenController.isLast.value){
              Get.offAll(
                    () => const LoginScreen(),
                transition: Transition.zoom,
                curve: Curves.bounceInOut,
                duration: const Duration(milliseconds: 600),
              );
            }
            else{
              pageController.nextPage(duration:const Duration(microseconds: 100), curve: Curves.linear);

            }

          },
          child: Text(
            'Next',
            style: getBoldTextStyle(
              color: Colors.white,
              fontSize: FontSizeManager.fs20.sp,
            ),
          ),
        ),
      ],
    );
  }
}
