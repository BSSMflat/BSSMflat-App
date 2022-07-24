import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Common {
  static Widget bottomBar() {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: CommonColor.gray02, // red as border color
          ),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(31.r), topRight: Radius.circular(31.r))
      ),
      child: Material(
        color: Colors.transparent,
        child: TabBar(
          labelColor: const Color(0xff00A9A5),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.transparent,
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                size: 45.h,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.feed_outlined,
                size: 45.h,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.edit_outlined,
                size: 45.h,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.account_circle_outlined,
                size: 45.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonColor {
  static Color bssmNavy = const Color(0xFF17335C);
  static Color bssmRed = const Color(0xFFE6333F);
  static Color bssmBlue = const Color(0xFF006AB7);
  static Color bssmYellow = const Color(0xFFF3A941);
  static Color gray01 = const Color(0xFFF4F4F4);
  static Color gray02 = const Color(0xFFB2B2B2);
}