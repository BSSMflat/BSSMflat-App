import 'package:bssmflat/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Study_bottom {
  static Widget study_bottomBar() {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: CommonColor.gray02, // red as border color
          ),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(31.r), topRight: Radius.circular(31.r))),
      child: const Material(
        color: Colors.transparent,
        child: TabBar(
          labelColor: const Color(0xff00A9A5),
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.transparent,
          tabs: [],
        ),
      ),
    );
  }
}
