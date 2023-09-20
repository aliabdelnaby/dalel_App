// import 'package:dalil/core/utils/app_assets.dart';
// import 'package:dalil/core/utils/app_colors.dart';
// import 'package:dalil/core/utils/app_strings.dart';
// import 'package:dalil/core/utils/app_text_style.dart';
// import 'package:dalil/core/widgets/custom_button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../../../core/functions/navigation.dart';

// class SignInView extends StatelessWidget {
//   const SignInView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: AppColors.offWhite,
//         body: CustomScrollView(
//           physics: const BouncingScrollPhysics(),
//           slivers: [
//             SliverFillRemaining(
//               hasScrollBody: false,
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       width: double.infinity,
//                       color: AppColors.primaryColor,
//                       child: Column(
//                         children: [
//                           const SizedBox(height: 100),
//                           Text(
//                             AppStrings.appName,
//                             style: CustomTextStyle.saira700style32,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               SvgPicture.asset(
//                                 Assets.assetsImagesVector1,
//                                 height: 124.5,
//                               ),
//                               SvgPicture.asset(
//                                 Assets.assetsImagesVector2,
//                                 height: 124.5,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: Container(
//                       width: double.infinity,
//                       color: AppColors.offWhite,
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Column(
//                           children: [
//                             const SizedBox(height: 30),
//                             Text(
//                               AppStrings.welcomeBack,
//                               style: CustomTextStyle.poppins500style24.copyWith(
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             const SizedBox(height: 50),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: AppStrings.emailAddress,
//                                 labelStyle:
//                                     CustomTextStyle.poppins300style16.copyWith(
//                                   color: AppColors.deebGrey,
//                                 ),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 30),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: AppStrings.password,
//                                 labelStyle:
//                                     CustomTextStyle.poppins300style16.copyWith(
//                                   color: AppColors.deebGrey,
//                                 ),
//                                 suffixIcon: const Icon(
//                                   Icons.remove_red_eye_outlined,
//                                 ),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(5),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 15),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     customNavigate(context, '/forgotpassword');
//                                   },
//                                   child: Text(
//                                     AppStrings.forgotPassword,
//                                     style: CustomTextStyle.poppins400style12
//                                         .copyWith(
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 120),
//                             CustomBtn(
//                               text: AppStrings.signIn,
//                               onPressed: () {},
//                             ),
//                             const SizedBox(height: 20),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   AppStrings.dontHaveAnAccount,
//                                   style: CustomTextStyle.poppins400style12,
//                                 ),
//                                 const SizedBox(width: 5),
//                                 GestureDetector(
//                                   onTap: () {
//                                     customReplacementNavigate(
//                                         context, '/signup');
//                                   },
//                                   child: Text(
//                                     AppStrings.signUp,
//                                     style: CustomTextStyle.poppins400style12
//                                         .copyWith(
//                                       color: AppColors.lightGrey,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
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
