import 'package:bssmflat/common/common.dart';
import 'package:bssmflat/screen/home_screen.dart';
import 'package:bssmflat/screen/studypaper_screen.dart';
import 'package:bssmflat/screen/user_screen.dart';
import 'package:bssmflat/screen/wrongNote_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors, deprecated_member_use
    SystemChrome.setEnabledSystemUIOverlays([]);
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (BuildContext context, Widget? child) => MaterialApp(
              theme: ThemeData(primaryColor: CommonColor.gray01),
              title: 'BssmFlat',
              debugShowCheckedModeBanner: false,
              home: DefaultTabController(
                  length: 4,
                  child: Scaffold(
                    body: const TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        HomeScreen(),
                        StudyPaperScreen(),
                        WrongAnswerScreen(),
                        UserScreen()
                      ],
                    ),
                    bottomNavigationBar: Common.bottomBar(),
                  )),
            ));
  }
}
