import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ForgotPasswordTextWidget extends StatelessWidget {
  const ForgotPasswordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customNavigate(context, '/forgotPassword');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: CustomTextStyle.poppins600style28.copyWith(fontSize: 12),
        ),
      ),
    );
  }
}
