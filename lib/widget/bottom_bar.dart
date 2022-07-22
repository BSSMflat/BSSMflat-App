import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800),
      builder: (BuildContext context, Widget? child) => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // red as border color
          )
        ),
        child: SizedBox(
          height: 60.h,
          child: TabBar(
            labelColor: const Color(0xff00A9A5),
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  size: 45.h,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.feed_outlined,
                  size: 45.h,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.edit_outlined,
                  size: 45.h,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 45.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
