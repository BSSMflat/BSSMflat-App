import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '홈',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: AppBar(
          backgroundColor: const Color(0xff17335C),
          title: Text(
            "홈",
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
            Container(
              margin: EdgeInsets.only(top: 15.h),
              height: 240.h,
              width: 340.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: const Color(0xffB2B2B2),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20.h))),
            ),
            GestureDetector(
              onTap: () {
                //공지사항 페이지로
              },
              child: Container(
                margin: EdgeInsets.only(top: 15.h),
                height: 140.h,
                width: 340.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: const Color(0xffB2B2B2),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20.h))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, top: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.campaign,
                            size: 40.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "공지사항",
                            style: TextStyle(fontSize: 20.sp),
                          ),
                          SizedBox(width: 170.w),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 40.h,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff17335C),
                  minimumSize: Size(340.w, 60.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.h)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "새로 올라운 학습지",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 45.h,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 10.h),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff17335C),
                  minimumSize: Size(340.w, 60.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.h)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "미해결 학습지",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 45.h,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 10.h),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff17335C),
                  minimumSize: Size(340.w, 60.h),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.h)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "새로 올라온 학습지",
                      style: TextStyle(fontSize: 20.sp),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 45.h,
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
