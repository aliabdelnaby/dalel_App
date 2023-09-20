// import 'package:dalil/core/utils/app_assets.dart';
// import 'package:dalil/core/widgets/custom_button.dart';
// import 'package:flutter/material.dart';

// import '../../../../core/utils/app_colors.dart';
// import '../../../../core/utils/app_strings.dart';
// import '../../../../core/utils/app_text_style.dart';

// class ForgotPassword extends StatelessWidget {
//   const ForgotPassword({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.offWhite,
//         body: ListView(
//           physics: const BouncingScrollPhysics(),
//           children: [
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24),
//               child: Column(
//                 children: [
//                   const SizedBox(height: 108),
//                   Center(
//                     child: Text(
//                       AppStrings.forgotPasswordPage,
//                       style: CustomTextStyle.poppins500style24.copyWith(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 50),
//                   SizedBox(
//                     height: 235,
//                     width: 235,
//                     child: Image.asset(
//                       Assets.assetsImagesForgotPassword,
//                     ),
//                   ),
//                   const SizedBox(height: 25),
//                   Text(
//                     'Enter your registered email below to receive password reset instruction',
//                     textAlign: TextAlign.center,
//                     style: CustomTextStyle.poppins400style12.copyWith(
//                       fontSize: 14,
//                     ),
//                   ),
//                   const SizedBox(height: 45),
//                   TextField(
//                     decoration: InputDecoration(
//                       labelText: AppStrings.emailAddress,
//                       labelStyle: CustomTextStyle.poppins300style16.copyWith(
//                         color: AppColors.deebGrey,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 120),
//                   CustomBtn(
//                     onPressed: () {},
//                     text: AppStrings.sendVerificationCode,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
