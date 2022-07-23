import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WrongAnswerScreen extends StatelessWidget {
  const WrongAnswerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("오답노트 스크린입니다"),
    );
  }
}