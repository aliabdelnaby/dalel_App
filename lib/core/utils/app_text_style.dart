import 'package:dalil/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static final pacifico400style64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    fontFamily: 'Pacifico',
    color: AppColors.deebBrown,
  );

  static const poppins500style24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Colors.black,
  );

  static const poppins300style16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    fontFamily: 'Poppins',
    color: Colors.black,
  );
}
