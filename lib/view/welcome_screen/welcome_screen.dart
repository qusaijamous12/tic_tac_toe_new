import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/welcome_screen_controller.dart';
import '../../model/on_board_model.dart';

import '../../shared/resources/image_manger.dart';
import '../../shared/resources/spaces_manager.dart';
import 'widgtes/buile_next_and_back_btn.dart';
import 'widgtes/page_view_widget.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final _data = [
    OnBoardModel(
      title: 'Welcome',
      image: ImageManager.onBoardOne,
      subTitle:
      'One of the oldest world games now available on your smartphone device!',
    ),
    OnBoardModel(
      title: 'Compete',
      image: ImageManager.onBoardTwo,
      subTitle:
      'Play the game with your friends, and prove that you’re a worthy opponent!',
    ),
    OnBoardModel(
      title: 'Scoreboard',
      image: ImageManager.onBoardThree,
      subTitle:
      'Earn points and make your own way to the top of the scoreboard!',
    ),
  ];
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final _welcomeScreenController=Get.find<WelcomeScreenController>(tag: 'welcome_screen_controller');

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(PaddingManager.kPadding),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics:const NeverScrollableScrollPhysics(),
                onPageChanged: (index){
                  if(index==2){
                    _welcomeScreenController.isLast(true);
                  }
                  else{
                    _welcomeScreenController.isLast(false);
                  }

                },
                controller: _pageController,
                itemBuilder: (context, index) =>BuildPageViewWidget(model: _data[index]),
                itemCount:_data.length,
              ),
            ),

            BuildNextAndBackBtn(pageController: _pageController)

          ],
        ),
      ),
    );
  }
}
