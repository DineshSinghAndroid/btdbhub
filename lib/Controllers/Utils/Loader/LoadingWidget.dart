import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';

import '../Colors/custom_color.dart';

class LoadingWidget extends StatelessWidget {
  double height = 60.00;
  double width = 60.00;

  LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Lottie.asset(
      "assets/spinner/lottie/loading3.json",
    );
  }
}

class LoadingWidget2 extends StatelessWidget {
  double height = 60.00;
  double width = 60.00;

  LoadingWidget2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SpinKitRing(
              color: AppColors.deepOrangeColor,
              size: 42.0,
              lineWidth: 5,
            ),
          ),
        ],
      ),
    );
  }
}
