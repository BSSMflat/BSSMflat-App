import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bssmflat/common/common.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: CommonColor.gray02, // red as border color
        ),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(31.r), topRight: Radius.circular(31.r))
      ),
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
    );
  }
}
