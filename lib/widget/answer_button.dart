import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Study_Answer_button extends StatefulWidget {
  const Study_Answer_button({Key? key}) : super(key: key);

  @override
  State<Study_Answer_button> createState() => _Study_Answer_buttonState();
}

class _Study_Answer_buttonState extends State<Study_Answer_button> {
  bool answer1 = false;
  bool answer2 = false;
  bool answer3 = false;
  bool answer4 = false;
  bool answer5 = false;
  bool answer6 = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutlinedButton(
            onPressed: () {
              setState(() {
                answer1 = true;
                answer2 = false;
                answer3 = false;
                answer4 = false;
                answer5 = false;
                answer6 = false;
              });
            },
            // ignore: sort_child_properties_last
            child: Text(
              "1",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: answer1 ? Colors.white : Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: answer1 ? const Color(0xffE6333F) : null,
              minimumSize: Size(30.w, 30.h),
              shape: const CircleBorder(),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                answer1 = false;
                answer2 = true;
                answer3 = false;
                answer4 = false;
                answer5 = false;
                answer6 = false;
              });
            },
            // ignore: sort_child_properties_last
            child: Text(
              "2",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: answer2 ? Colors.white : Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: answer2 ? const Color(0xffE6333F) : null,
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                answer1 = false;
                answer2 = false;
                answer3 = true;
                answer4 = false;
                answer5 = false;
                answer6 = false;
              });
            },
            // ignore: sort_child_properties_last
            child: Text(
              "3",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: answer3 ? Colors.white : Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: answer3 ? const Color(0xffE6333F) : null,
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                answer1 = false;
                answer2 = false;
                answer3 = false;
                answer4 = true;
                answer5 = false;
                answer6 = false;
              });
            },
            // ignore: sort_child_properties_last
            child: Text(
              "4",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: answer4 ? Colors.white : Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: answer4 ? const Color(0xffE6333F) : null,
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                answer1 = false;
                answer2 = false;
                answer3 = false;
                answer4 = false;
                answer5 = true;
                answer6 = false;
              });
            },
            // ignore: sort_child_properties_last
            child: Text(
              "5",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: answer5 ? Colors.white : Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: answer5 ? const Color(0xffE6333F) : null,
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                answer1 = false;
                answer2 = false;
                answer3 = false;
                answer4 = false;
                answer5 = false;
                answer6 = true;
              });
            },
            // ignore: sort_child_properties_last
            child: Text(
              "모름",
              style: TextStyle(
                  fontSize: 15.sp,
                  color: answer6 ? Colors.white : Colors.black),
            ),
            style: ElevatedButton.styleFrom(
              primary: answer6 ? const Color(0xffE6333F) : null,
              shape: const CircleBorder(),
              minimumSize: Size(30.w, 30.h),
            ),
          ),
        ],
      ),
    );
  }
}

class Wrong_Answer_button extends StatefulWidget {
  const Wrong_Answer_button({Key? key}) : super(key: key);

  @override
  State<Wrong_Answer_button> createState() => _Wrong_Answer_buttonState();
}

class _Wrong_Answer_buttonState extends State<Wrong_Answer_button> {
  bool answer1 = false;
  bool answer2 = false;
  bool answer3 = false;
  bool answer4 = false;
  bool answer5 = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 45.w, right: 45.w),
      child: SizedBox(
        height: 30.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  answer1 = true;
                  answer2 = false;
                  answer3 = false;
                  answer4 = false;
                  answer5 = false;
                });
              },
              // ignore: sort_child_properties_last
              child: Text(
                "1",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: answer1 ? Colors.white : Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: answer1 ? const Color(0xffE6333F) : null,
                minimumSize: Size(30.w, 30.h),
                shape: const CircleBorder(),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  answer1 = false;
                  answer2 = true;
                  answer3 = false;
                  answer4 = false;
                  answer5 = false;
                });
              },
              // ignore: sort_child_properties_last
              child: Text(
                "2",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: answer2 ? Colors.white : Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: answer2 ? const Color(0xffE6333F) : null,
                shape: const CircleBorder(),
                minimumSize: Size(30.w, 30.h),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  answer1 = false;
                  answer2 = false;
                  answer3 = true;
                  answer4 = false;
                  answer5 = false;
                });
              },
              // ignore: sort_child_properties_last
              child: Text(
                "3",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: answer3 ? Colors.white : Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: answer3 ? const Color(0xffE6333F) : null,
                shape: const CircleBorder(),
                minimumSize: Size(30.w, 30.h),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  answer1 = false;
                  answer2 = false;
                  answer3 = false;
                  answer4 = true;
                  answer5 = false;
                });
              },
              // ignore: sort_child_properties_last
              child: Text(
                "4",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: answer4 ? Colors.white : Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: answer4 ? const Color(0xffE6333F) : null,
                shape: const CircleBorder(),
                minimumSize: Size(30.w, 30.h),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  answer1 = false;
                  answer2 = false;
                  answer3 = false;
                  answer4 = false;
                  answer5 = true;
                });
              },
              // ignore: sort_child_properties_last
              child: Text(
                "5",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: answer5 ? Colors.white : Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: answer5 ? const Color(0xffE6333F) : null,
                shape: const CircleBorder(),
                minimumSize: Size(30.w, 30.h),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
