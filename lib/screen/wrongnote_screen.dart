import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/model/wrong_paper.dart';
import 'package:bssmflat/widget/Paper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WrongAnswerScreen extends StatelessWidget {
  const WrongAnswerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "학습지",
      debugShowCheckedModeBanner: false,
      home: WrongNote(),
    );
  }
}

class WrongNote extends StatefulWidget {
  const WrongNote({Key? key}) : super(key: key);

  @override
  State<WrongNote> createState() => _WrongNoteState();
}

class _WrongNoteState extends State<WrongNote> {
  List<WrongPaper> wrong_paperList = <WrongPaper>[];

  @override
  void initState() {
    super.initState();
    //여기에 db에서 처리한 값들을 LIST에 넣으면 됨
    wrong_paperList.add(WrongPaper("수학", "김규봉", "지수와 로그(3)", "~9/10", 1));
    wrong_paperList.add(WrongPaper("수학", "김규봉", "지수와 로그(3)", "~9/10", 4));
    wrong_paperList.add(WrongPaper("수학", "김규봉", "지수와 로그(3)", "~9/10", 8));
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
            "오답노트",
            style: TextStyle(fontSize: 29.sp, fontFamily: "Pretendard"),
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
          child: Column(children: makeWrongPaper(context, wrong_paperList)),
        ),
      ),
    );
  }
}
