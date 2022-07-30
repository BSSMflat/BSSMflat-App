import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Answer {
  // ignore: non_constant_identifier_names
  static Widget Answer_button() {
    return SizedBox(
      height: 30.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              "1",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(30.w, 30.h),
              shape: const CircleBorder(),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              "2",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              "3",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              "4",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              "5",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            
            // ignore: sort_child_properties_last
            child: Text(
              "모름",
              style: TextStyle(fontSize: 15.sp, color: Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xffE6333F),
              minimumSize: Size(30.w, 30.h),
              shape: const CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
