import 'package:bssmflat/screen/home_screen.dart';
import 'package:bssmflat/screen/studypaper_screen.dart';
import 'package:bssmflat/screen/user_screen.dart';
import 'package:bssmflat/screen/wrongnote_screen.dart';
import 'package:bssmflat/widget/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ScreenUtilInit(
        designSize: Size(360, 800),
        builder: (BuildContext context, Widget? child) => MaterialApp(
              theme: ThemeData(primaryColor: Color(0xffE5E5E5)),
              title: 'BssmFlat',
              debugShowCheckedModeBanner: false,
              home: const DefaultTabController(
                  length: 4,
                  child: Scaffold(
                    body: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        homeScreen(),
                        studyPaperScreen(),
                        wrongAnswerScreen(),
                        userScreen()
                      ],
                    ),
                    bottomNavigationBar: Bottom(),
                  )),
            ));
  }
}
