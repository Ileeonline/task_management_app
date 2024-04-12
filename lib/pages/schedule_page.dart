// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/constants/constants.dart';
import 'package:task_management_app/pages/create_task_page.dart';
import 'package:task_management_app/pages/days_tabs/mon_tab.dart';
import 'package:task_management_app/pages/days_tabs/sat_tab.dart';
import 'package:task_management_app/pages/days_tabs/sun_tab.dart';

import 'days_tabs/fri_tab.dart';
import 'days_tabs/thu_tab.dart';
import 'days_tabs/tue_tab.dart';
import 'days_tabs/wed_tab.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});
  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  final List<String> _tabs = [
    "Mon, 2",
    "Tue, 3",
    "Wed, 4",
    "Thu, 5",
    "Fri, 6",
    "Sat, 7",
    "Sun, 8",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Container(
            height: 30.h,
            padding: EdgeInsets.only(bottom: 2.h),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(24),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(1, 3),
                  blurRadius: 12,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 8.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Oct, 2020',
                        style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: kPrimaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (e) => const CreateTask(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.sp),
                            gradient: LinearGradient(
                              colors: [
                                kPurpleColor,
                                kBlueColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.w, vertical: 1.h),
                          child: Text(
                            '+ Add task',
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.normal,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  halfSizedBox,
                  my_Tabs(),
                ],
              ),
            ),
          ),
          halfSizedBox,
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: IndexedStack(
                index: currentIndex,
                children: const [
                  MonTab(),
                  TueTab(),
                  WedTab(),
                  ThuTab(),
                  FriTab(),
                  SatTab(),
                  SunTab(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // tabs method from here

  SizedBox my_Tabs() {
    return SizedBox(
      height: 12.h,
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
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                    margin: EdgeInsets.only(
                      right: 4.w,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.sp),
                        color: const Color.fromRGBO(239, 236, 253, 1),
                        border: currentIndex == index
                            ? Border.all(color: Colors.grey[300]!, width: 1)
                            : Border.all()),
                    child: Center(
                      child: Text(
                        _tabs[index],
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: kPurpleColor,
                        ),
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                        _tabController.animateTo(index);
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                      margin: EdgeInsets.only(
                        right: 4.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.sp),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          _tabs[index],
                          style: GoogleFonts.poppins(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                            color: kTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
          );
        },
      ),
    );
  }
}
