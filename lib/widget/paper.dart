// ignore_for_file: non_constant_identifier_names

import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/model/study_paper.dart';
import 'package:bssmflat/screen/detailPaper_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class Study_Paper extends StatelessWidget {
  final List<Paper> unsolve_papers;
  final List<Paper> fast_papers;
  // ignore: use_key_in_widget_constructors
  const Study_Paper({required this.unsolve_papers, required this.fast_papers});
  //1
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          title: Text(
            '미해결학습지',
            style: TextStyle(fontSize: 20.sp, color: const Color(0xff00A9A5)),
          ),
          children: makeStudyPaper(context, unsolve_papers),
        ),
        ExpansionTile(
          title: Text(
            '기간임박학습지',
            style: TextStyle(fontSize: 20.sp, color: CommonColor.bssmRed),
          ),
          backgroundColor: const Color(0xffD2D2D2),
          children: makeStudyPaper(context, fast_papers),
        )
      ],
    );
  }
}

List<Widget> makeStudyPaper(BuildContext context, List<Paper> papers) {
  List<Widget> results = [];

  for (var i = 0; i < papers.length; i++) {
    int time_color = color_select(papers[i].solve);
    results.add(InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).pushReplacement(
            MaterialPageRoute(
                builder: (context) => DetailPaper(papers: papers[i])));
      },
      child: Container(
        margin: EdgeInsets.all(10.w),
        padding: EdgeInsets.only(top: 9.h),
        width: 340.w,
        height: 105.h,
        decoration: BoxDecoration(
            border: Border.all(color: CommonColor.gray02),
            borderRadius: BorderRadius.all(Radius.circular(40.h))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    papers[i].subject,
                    style:
                        TextStyle(fontSize: 24.sp, color: CommonColor.bssmNavy),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Text(
                    papers[i].teacher,
                    style:
                        TextStyle(fontSize: 14.sp, color: CommonColor.bssmNavy),
                  ),
                  SizedBox(
                    width: 170.w,
                  ),
                  Text(
                    papers[i].time,
                    style: TextStyle(fontSize: 16.sp, color: Color(time_color)),
                  ),
                ],
              ),
            ),
            SizedBox(
                width: 320.w,
                child: const Divider(color: Color(0xffD5D5D5), thickness: 1.0)),
            Padding(
              padding: EdgeInsets.only(left: 29.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    papers[i].name,
                    style:
                        TextStyle(fontSize: 24.sp, color: CommonColor.bssmNavy),
                  ),
                  SizedBox(
                    width: 105.w,
                  ),
                  Text(
                    papers[i].solve,
                    style: TextStyle(fontSize: 16.sp, color: Color(time_color)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
  return results;
}

int color_select(String time) {
  var color = 0xff00A9A5;
  if (time == "기한임박") {
    //db에서 넘어온 기간이 현재기간과 비교해 7일밖에 안남았을때
    color = 0xffE6333F;
  }
  return color;
}
