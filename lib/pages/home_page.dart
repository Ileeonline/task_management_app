//  avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_import, prefer_final_fields, unused_field, non_constant_identifier_names

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/constants/constants.dart';
import 'package:task_management_app/pages/home_tabs/completed_tab.dart';
import 'package:task_management_app/pages/home_tabs/in_progress_tab.dart';
import 'package:task_management_app/pages/home_tabs/my_tasks_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: _tabs.length, vsync: this);
  }

  final List<String> _tabs = [
    'My Tasks',
    'In-progress',
    'Completed',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                  child: Image.asset('assets/images/drawer.png'),
                ),
                Image.asset('assets/images/person.png'),
              ],
            ),
            halfSizedBox,
            Text(
              'Hello Rohan!',
              style: GoogleFonts.poppins(
                fontSize: 26.sp,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            Text(
              'Have a nice day.',
              style: GoogleFonts.poppins(
                fontSize: 13.sp,
                color: kPrimaryColor,
              ),
            ),
            halfSizedBox,
            my_tabs(),
            halfSizedBox,
            Expanded(
              child: IndexedStack(
                index: currentIndex,
                children: const [
                  MyTasks(),
                  InProgress(),
                  Completed(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox my_tabs() {
    return SizedBox(
      height: 7.h,
      width: double.infinity,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: _tabs.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: currentIndex == index
                  ? AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding: EdgeInsets.all(12.sp),
                      margin: EdgeInsets.only(
                        right: 4.w,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.sp),
                          color: kWhiteColor,
                          border: currentIndex == index
                              ? Border.all(color: kPrimaryColor, width: 2)
                              : Border.all()),
                      child: Center(
                        child: Text(
                          _tabs[index],
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                          tabController.animateTo(index);
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: EdgeInsets.all(12.sp),
                        margin: EdgeInsets.only(
                          right: 4.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.sp),
                          color: const Color(0xffE5EAFC),
                        ),
                        child: Center(
                          child: Text(
                            _tabs[index],
                            style: GoogleFonts.poppins(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.normal,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
            );
          }),
    );
  }
}
