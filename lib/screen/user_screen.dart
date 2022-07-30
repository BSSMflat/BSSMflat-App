import 'package:bssmflat/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '개인정보',
      debugShowCheckedModeBanner: false,
      home: User(),
    );
  }
}

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColor.gray01,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: const Color(0xff17335C),
          title: Text(
            "개인정보",
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
            SizedBox(
              height: 420.h,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(300.w, 45.h),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.h)),
                    primary: const Color(0xff17335C)),
                child: Text(
                  "로그인",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xffFFFFFF)),
                )),
            SizedBox(
              height: 15.h,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(300.w, 45.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.h),
                      side: const BorderSide(color: Color(0xffA7BEE3)),
                    ),
                    primary: const Color(0xffFFFFFF)),
                child: Text(
                  "다른 방법으로 로그인",
                  style: TextStyle(
                      fontSize: 20.sp, color: const Color(0xff17335C)),
                )),
            SizedBox(
              height: 16.h,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "도움이 필요하다면",
                  style: TextStyle(
                      color: const Color(0xff17335C), fontSize: 12.sp),
                ))
          ],
        ),
      ),
    );
  }
}
