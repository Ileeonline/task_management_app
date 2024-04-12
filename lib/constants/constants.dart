import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// const sizedboxes

SizedBox sizedBox = SizedBox(height: 10.h);
SizedBox halfSizedBox = SizedBox(height: 2.h);
SizedBox widthSizedBox = SizedBox(width: 10.w);
SizedBox halfWidthSizedBox = SizedBox(width: 2.w);

// const bordar radius

BorderRadius kTopBordarRadius = const BorderRadius.vertical(
  top: Radius.circular(20),
);
BorderRadius kBottomBordarRadius = const BorderRadius.vertical(
  bottom: Radius.circular(20),
);

// const colors

Color kPrimaryColor = const Color(0xff2E3A59);
Color kBackgroundColor = const Color(0xffF2F5FF);
Color kTextColor = const Color(0xff242736);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kPurpleColor = const Color.fromRGBO(138, 61, 240, 1);
Color kBlueColor = const Color.fromRGBO(72, 77, 244, 1);
