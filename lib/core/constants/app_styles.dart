import 'package:bookly/config/theme/app_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles
{
  AppStyles._();

  static final textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static final textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
  );

  static final textStyle30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w900,
    fontFamily: kGtSectraFine,
    letterSpacing: 1.2,
  );

  static final textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  static final textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
}

const TextStyle textStyle = TextStyle();
