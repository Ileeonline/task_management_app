// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/models/tasks.dart';

import '../constants/constants.dart';

class TaskListTile extends StatelessWidget {
  final Tasks tasks;
  const TaskListTile({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.sp),
      margin: EdgeInsets.only(bottom: 8.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: kWhiteColor,
      ),
      child: ListTile(
        leading: Container(
            padding: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kPurpleColor,
                    kBlueColor,
                  ]),
            ),
            child: Image.asset(tasks.taskImage)),
        title: Text(
          tasks.taskName,
          style: GoogleFonts.poppins(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          tasks.days,
          style: GoogleFonts.poppins(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing: Icon(
          Icons.more_vert_outlined,
          size: 20.sp,
        ),
      ),
    );
  }
}
