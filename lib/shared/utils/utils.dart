import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../resources/color_manager.dart';

class Utils{
  static Future showToastMessage({required final String title})async{
    return  Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: ColorManager.kPrimary,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}