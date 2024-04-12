import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/components/my_textfield.dart';
import 'package:task_management_app/constants/constants.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  int catagoryIndex = 0;

  List<String> catagoriesList = [
    "Design",
    "Meeting",
    "Coding",
    "BDE",
    "Testing",
    "Quick call",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kPurpleColor,
              kBlueColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5.w, right: 5.w, top: 5.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BackButton(
                        color: kWhiteColor,
                      ),
                      widthSizedBox,
                      Text(
                        '        Progress        ',
                        style: GoogleFonts.poppins(
                          fontSize: 15.sp,
                          color: kWhiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      widthSizedBox,
                      Icon(
                        CupertinoIcons.search,
                        color: kWhiteColor,
                        size: 20.sp,
                      ),
                    ],
                  ),
                  halfSizedBox,
                  const MyTextField(
                    hint: 'Task name',
                    label: "Name",
                  ),
                  halfSizedBox,
                  const MyTextField(
                    hint: "Task date",
                    label: "Date",
                  ),
                  halfSizedBox,
                  halfSizedBox,
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: kTopBordarRadius,
                  color: kWhiteColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 4.h, left: 5.w, right: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start time",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: const Color(0xffBFC8E8),
                                ),
                              ),
                              halfSizedBox,
                              Text(
                                '1:22 pm',
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                          widthSizedBox,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End time",
                                style: GoogleFonts.poppins(
                                  fontSize: 12.sp,
                                  color: const Color(0xffBFC8E8),
                                ),
                              ),
                              halfSizedBox,
                              Text(
                                '3:20 pm',
                                style: GoogleFonts.poppins(
                                    fontSize: 16.sp,
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey[200],
                        thickness: 1.5,
                      ),
                      halfSizedBox,
                      Text(
                        "Catagory",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: const Color(0xffBFC8E8),
                        ),
                      ),
                      halfSizedBox,
                      SizedBox(
                        width: double.infinity,
                        height: 7.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: catagoriesList.length,
                          itemBuilder: (context, index) {
                            return catagoryIndex == index
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        catagoryIndex = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      margin: EdgeInsets.only(right: 2.w),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 2.h),
                                      duration:
                                          const Duration(milliseconds: 300),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        gradient: LinearGradient(
                                          colors: [
                                            kPurpleColor,
                                            kBlueColor,
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                        ),
                                      ),
                                      child: Text(
                                        catagoriesList[index],
                                        style: GoogleFonts.poppins(
                                            color: kWhiteColor,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  )
                                : GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        catagoryIndex = index;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      margin: EdgeInsets.only(right: 2.w),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.w, vertical: 2.h),
                                      duration:
                                          const Duration(milliseconds: 300),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        color: const Color(0xffE5EAFC),
                                      ),
                                      child: Text(
                                        catagoriesList[index],
                                        style: GoogleFonts.poppins(
                                            color: kTextColor, fontSize: 12.sp),
                                      ),
                                    ),
                                  );
                          },
                        ),
                      ),
                      halfSizedBox,
                      Divider(
                        color: Colors.grey[200],
                        thickness: 1.5,
                      ),
                      halfSizedBox,
                      Text(
                        "Description",
                        style: GoogleFonts.poppins(
                          fontSize: 12.sp,
                          color: const Color(0xffBFC8E8),
                        ),
                      ),
                      halfSizedBox,
                      const DescriptionTextField(),
                      halfSizedBox,
                      halfSizedBox,
                      halfSizedBox,
                      halfSizedBox,
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            gradient: LinearGradient(
                              colors: [
                                kPurpleColor,
                                kBlueColor,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Create Task",
                              style: GoogleFonts.poppins(
                                  color: kWhiteColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionTextField extends StatelessWidget {
  const DescriptionTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 2,
      style: GoogleFonts.poppins(
        color: kPrimaryColor,
        fontSize: 14.sp,
      ),
      cursorColor: kBlueColor,
      decoration: InputDecoration(
        isCollapsed: false,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.only(top: 18.sp),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[500]!),
        ),
        label: Text(
          "Description",
          style: GoogleFonts.poppins(
            color: const Color(0xffBFC8E8),
            fontSize: 12.sp,
          ),
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: "Enter description",
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey[400],
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
