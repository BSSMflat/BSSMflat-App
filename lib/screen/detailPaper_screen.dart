import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/model/study_paper.dart';
import 'package:bssmflat/widget/answer_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPaper extends StatefulWidget {
  final Paper papers;
  // ignore: use_key_in_widget_constructors
  const DetailPaper({required this.papers});

  @override
  State<DetailPaper> createState() => _DetailPaperState();
}

class _DetailPaperState extends State<DetailPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
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
        body: Column(children: [
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
          ),
          SizedBox(
            height: 157.h,
          ),
          Container(
            width: double.infinity,
            height: 316.h,
            decoration: BoxDecoration(color: CommonColor.gray01),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "사진",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 50.sp),
              ),
            ),
          ),
          SizedBox(height: 47.h),
          Answer.Answer_button(),
          SizedBox(
            height: 68.h,
          ),
          Container(
            width: double.infinity,
            height: 60.h,
            decoration: BoxDecoration(
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.h),
                    topRight: Radius.circular(30.h))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset("images/tabbar/left.png"),
                  label: Text(
                    "이전 문제",
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h)),
                      side: BorderSide(color: Colors.white)),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset("images/tabbar/menu.png"),
                  label: Text(
                    "풀이 현황",
                    style: TextStyle(fontSize: 14.sp, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h)),
                      side: BorderSide(color: Colors.white)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "다음 문제",
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                      SizedBox(width: 5.w),
                      Image.asset("images/tabbar/right.png")
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h)),
                      side: BorderSide(color: Colors.white)),
                ),
              ],
            ),
          ),
        ]));
  }
}
