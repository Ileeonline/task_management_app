import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/components/project_card.dart';
import 'package:task_management_app/components/task_listtile.dart';
import 'package:task_management_app/models/projects.dart';
import 'package:task_management_app/models/tasks.dart';

import '../../constants/constants.dart';

class MyTasks extends StatelessWidget {
  const MyTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 26.h,
          width: double.infinity,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: projectsList.length,
              itemBuilder: (context, index) {
                return ProjectCard(projects: projectsList[index]);
              }),
        ),
        halfSizedBox,
        Text(
          'Progress',
          style: GoogleFonts.poppins(
            fontSize: 15.sp,
            color: kPrimaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: tasksList.length,
            itemBuilder: (context, index) {
              return TaskListTile(
                tasks: tasksList[index],
              );
            },
          ),
        )
      ],
    );
  }
}
