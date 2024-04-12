import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:task_management_app/constants/constants.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final String label;
  const MyTextField({super.key, required this.hint, required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.poppins(
        color: Colors.white,
        fontSize: 14.sp,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        isCollapsed: false,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.only(top: 18.sp),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kWhiteColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[500]!),
        ),
        label: Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.grey[200],
            fontSize: 12.sp,
          ),
        ),
        floatingLabelAlignment: FloatingLabelAlignment.start,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: hint,
        hintStyle: GoogleFonts.poppins(
          color: Colors.grey[400],
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
