import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Helper/BuildText/BuildText.dart';

class Utils {
  static void printLog(var log) {
    // print(log);
  }
}

class ToastCustom {
  static showToast({required String msg}) {
    Fluttertoast.showToast(
        msg: msg,
        textColor: Colors.white,
        gravity: ToastGravity.TOP,
        toastLength: Toast.LENGTH_SHORT);
  }

  static showToastWithLength({required String msg, Toast? toastLength}) {
    Fluttertoast.showToast(
        msg: msg,
        gravity: ToastGravity.TOP,
        toastLength: toastLength ?? Toast.LENGTH_LONG,
        textColor: Colors.white);
  }

  static showToastWithGravity({required String msg, ToastGravity? gravity}) {
    Fluttertoast.showToast(msg: msg, gravity: gravity ?? ToastGravity.TOP);
  }
}
