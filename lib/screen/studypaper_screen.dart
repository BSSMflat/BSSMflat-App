import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/model/study_paper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StudyPaperScreen extends StatelessWidget {
  const StudyPaperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "학습지",
      debugShowCheckedModeBanner: false,
      home: StudyPaper(),
    );
  }
}

class StudyPaper extends StatefulWidget {
  const StudyPaper({Key? key}) : super(key: key);

  @override
  State<StudyPaper> createState() => _StudyPaperState();
}

class _StudyPaperState extends State<StudyPaper> {
  List<Paper> unsolve_paperList = <Paper>[];
  List<Paper> fast_paperList = <Paper>[];
  bool openUnsolve = false;
  bool openFast = false;

  @override
  void initState() {
    super.initState();

    //여기에 db에서 처리한 값들을 LIST에 넣으면 됨
    unsolve_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));
    unsolve_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));
    unsolve_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));

    fast_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "기한임박"));
    fast_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));
    fast_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));
  }

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
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  openUnsolve = !openUnsolve;
                });
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(12.w, 8.h, 15.w, 8.h),
                width: 360.w,
                height: 50.h,
                color: Color(0xffD9D9D9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "미해결 학습지",
                      style:
                          TextStyle(fontSize: 20.sp, color: Color(0xff00A9A5)),
                    ),
                    openUnsolve
                        ? Icon(
                            Icons.keyboard_arrow_up,
                            size: 40.h,
                          )
                        : Icon(
                            Icons.keyboard_arrow_down,
                            size: 40.h,
                          ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.w),
              width: 340.w,
              height: 120.h,
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
                          "수학",
                          style: TextStyle(
                              fontSize: 24.sp, color: CommonColor.bssmNavy),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "김규봉",
                          style: TextStyle(
                              fontSize: 14.sp, color: CommonColor.bssmNavy),
                        ),
                        SizedBox(
                          width: 170.w,
                        ),
                        Text(
                          "~9/10",
                          style: TextStyle(
                              fontSize: 16.sp, color: CommonColor.bssmNavy),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: 320.w,
                      child: Divider(color: Color(0xffD5D5D5), thickness: 1.0)),
                  Padding(
                    padding: EdgeInsets.only(left: 29.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "지수와 로그 (3)",
                          style: TextStyle(
                              fontSize: 20.sp, color: CommonColor.bssmNavy),
                        ),
                        SizedBox(
                          width: 125.w,
                        ),
                        Text(
                          "미제출",
                          style: TextStyle(
                              fontSize: 16.sp, color: Color(0xff00A9A5)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
