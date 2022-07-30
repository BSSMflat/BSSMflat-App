import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/model/study_paper.dart';
import 'package:bssmflat/widget/paper.dart';
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

  @override
  void initState() {
    super.initState();

    //여기에 db에서 처리한 값들을 LIST에 넣으면 됨
    unsolve_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));
    unsolve_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));
    unsolve_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "해결중"));

    fast_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "기한임박"));
    fast_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "기한임박"));
    fast_paperList.add(Paper("수학", "김규봉", "지수와 로그(3)", "~9/10", "기한임박"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.gray01,
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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Study_Paper(
                  unsolve_papers: unsolve_paperList,
                  fast_papers: fast_paperList)
            ],
          ),
        ),
      ),
    );
  }
}
