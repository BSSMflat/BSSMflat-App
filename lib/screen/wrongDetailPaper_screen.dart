import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/main.dart';
import 'package:bssmflat/model/wrong_paper.dart';
import 'package:bssmflat/screen/wrongnote_screen.dart';
import 'package:bssmflat/widget/answer_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class WrongDetailPaper extends StatefulWidget {
  final WrongPaper papers;
  // ignore: use_key_in_widget_constructors
  const WrongDetailPaper({required this.papers});

  @override
  State<WrongDetailPaper> createState() => _WrongDetailPaperState();
}

class _WrongDetailPaperState extends State<WrongDetailPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.h),
          child: AppBar(
            backgroundColor: const Color(0xff17335C),
            title: Text(
              "오답노트",
              style: TextStyle(fontSize: 29.sp, fontFamily: "Pretendard"),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_circle_left_outlined,
                color: Color(0xffFFFFFF),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyApp()));
              },
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
                  "9번 문제 ",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Colors.black,
                      fontFamily: "Pretendard",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "/ 26번 문제",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: CommonColor.gray02,
                      fontFamily: "Pretendard"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset("images/answer/unCorrect.png")],
            ),
          ),
          SizedBox(
            height: 134.5.h,
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
                style: TextStyle(fontSize: 50.sp, fontFamily: "Pretendard"),
              ),
            ),
          ),
          SizedBox(height: 47.h),
          const Wrong_Answer_button(),
          SizedBox(
            height: 36.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ElevatedButton(
                onPressed: () {},
                // ignore: sort_child_properties_last
                child: Image.asset("images/memo.png"),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(50.w, 50.h),
                    primary: const Color(0xffF4F4F4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.h))),
              ),
            ]),
          ),
          SizedBox(
            height: 10.h,
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
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontFamily: "Pretendard"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h)),
                      side: const BorderSide(color: Colors.white)),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Image.asset("images/tabbar/menu.png"),
                  label: Text(
                    "풀이 현황",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontFamily: "Pretendard"),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h)),
                      side: const BorderSide(color: Colors.white)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "다음 문제",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black,
                            fontFamily: "Pretendard"),
                      ),
                      SizedBox(width: 5.w),
                      Image.asset("images/tabbar/right.png")
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.h)),
                      side: const BorderSide(color: Colors.white)),
                ),
              ],
            ),
          ),
        ]));
  }
}
