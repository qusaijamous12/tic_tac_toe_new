import 'package:flutter/cupertino.dart';

import '../../../../shared/resources/color_manager.dart';
import '../../../../shared/resources/style_manager.dart';

class WinsLoseDraws extends StatelessWidget {
  const WinsLoseDraws({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
                'Loses',
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
                'Draws',
                style: getRegulerTextStyle(color: ColorManager.kDarkGrey),
              )
            ],
          ),
        )
      ],
    );
  }
}
