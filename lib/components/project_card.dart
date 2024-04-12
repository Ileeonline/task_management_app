// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/constants/constants.dart';
import 'package:task_management_app/models/projects.dart';

class ProjectCard extends StatelessWidget {
  final Projects projects;
  const ProjectCard({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      padding: EdgeInsets.all(16.sp),
      margin: EdgeInsets.only(right: 4.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [kPurpleColor, kBlueColor],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.transparent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          blurRadius: 10,
                          offset: const Offset(.3, 3))
                    ]),
                child: Image.asset(projects.projectImage),
              ),
              halfWidthSizedBox,
              Text(
                projects.projectNo,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  color: kWhiteColor,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          halfSizedBox,
          Text(
            projects.projectName,
            style: GoogleFonts.poppins(
                fontSize: 18.sp,
                color: kWhiteColor,
                fontWeight: FontWeight.w800,
                height: 1.2),
          ),
          halfSizedBox,
          Text(
            projects.date,
            style: GoogleFonts.poppins(
              fontSize: 12.sp,
              color: kWhiteColor,
              letterSpacing: 1,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
