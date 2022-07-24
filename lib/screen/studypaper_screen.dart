import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:folding_menu/folding_menu.dart';

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
  bool openUnsolve = false;
  bool openFast = false;
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
                padding: EdgeInsets.fromLTRB(20.w, 8.h, 15.w, 8.h),
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
                          )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}