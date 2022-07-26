import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/model/study_paper.dart';
import 'package:bssmflat/widget/study_bottom.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPaper extends StatefulWidget {
  final Paper papers;
  DetailPaper({required this.papers});

  @override
  State<DetailPaper> createState() => _DetailPaperState();
}

class _DetailPaperState extends State<DetailPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: const Color(0xff17335C),
          title: Text(
            "학습지",
            style: TextStyle(fontSize: 29.sp),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(0xffFFFFFF),
            ),
            onPressed: null,
            iconSize: 25.h,
          ),
          actions: const [
            IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Color(0xffFFFFFF),
                ),
                onPressed: null),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.h, left: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "1번 문제 ",
                  style: TextStyle(fontSize: 16.sp, color: Colors.black),
                ),
                Text(
                  "/ 26번 문제",
                  style: TextStyle(fontSize: 16.sp, color: CommonColor.gray02),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Study_bottom.study_bottomBar(),
    );
  }
}
