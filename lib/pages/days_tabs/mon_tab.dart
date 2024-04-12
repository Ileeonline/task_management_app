import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/components/task_listtile.dart';
import 'package:task_management_app/constants/constants.dart';
import 'package:task_management_app/models/tasks.dart';

class MonTab extends StatelessWidget {
  const MonTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        halfSizedBox,
        Text(
          'Tasks',
          style: GoogleFonts.poppins(
            fontSize: 15.sp,
            color: kPrimaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        halfSizedBox,
        Expanded(
          child: ListView.builder(
            itemCount: tasksList.length,
            itemBuilder: (context, index) {
              return TaskListTile(tasks: tasksList[index]);
            },
          ),
        ),
      ],
    );
  }
}
