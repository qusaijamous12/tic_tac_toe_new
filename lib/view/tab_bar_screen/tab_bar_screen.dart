import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shared/resources/color_manager.dart';
import '../../shared/resources/font_manager.dart';
import '../../shared/resources/image_manger.dart';
import '../../shared/resources/spaces_manager.dart';
import '../../shared/resources/style_manager.dart';
import 'friends_screen/friends_screen.dart';
import 'home_screen/home_screen.dart';
import 'online_palyers_screen/online_palyers_screen.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  final _currentIndex = RxInt(0);
  final _screens = const [
    HomeScreen(),
    OnlinePlayersScreen(),
    FriendsScreen(),

  ];
  final _images = [
    IconManager.homeIcon,
    IconManager.onlineIcon,
    IconManager.friendsIcon
  ];
  final _titles = [
    'HOME',
    'ONLINE',
    'FRIENDS'
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        Scaffold(
          body: _screens[_currentIndex.value],
          bottomNavigationBar: CircleNavBar(
              activeIcons: [
                for(final i in _images)...[
                  _buildActiveIcon(image: i)
                ]


              ],
              inactiveIcons: [
                for(final i in _titles)...[
                  _buildTextUnActive(text: i)
                ]
              ],

              color: ColorManager.kBottomBarColor,
              circleColor: Colors.white,
              height: 80,
              circleWidth: 60,
              levels: [
                'HOME',
                'ONLINE',
                'FRIENDS'
              ],
              inactiveLevelsStyle: getRegulerTextStyle(color: Colors.red,fontSize: 0),
              activeLevelsStyle:getRegulerTextStyle(color: Colors.white,fontSize: 14.sp) ,

              padding:const EdgeInsets.all(PaddingManager.kPadding/1.5),
              cornerRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),


              onTap: (index) {
                _currentIndex(index);
              },

              activeIndex: _currentIndex.value
          ),
        ));
  }

  Widget _buildActiveIcon({required final String image}) {
    return Container(
        padding: const EdgeInsetsDirectional.all(14),
        child: Image.asset(
          image, width: 10.w, height: 24.h, color: Colors.black,));
  }

  Widget _buildTextUnActive({required final String text}) {
    return Text(text, style: getRegulerTextStyle(
        color: Colors.white, fontSize: FontSizeManager.fs14.sp),);
    

  }
}
