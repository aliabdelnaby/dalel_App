import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_sign_in_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcome_panner.dart';
import '../widgets/welcome_text_widget.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(child: WelcomePanner()),
          const SliverToBoxAdapter(child: SizedBox(height: 32)),
          const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcomeBack)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSignInForm(),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.dontHaveAnAccount,
              text2: AppStrings.signUp,
              onTap: () {
                customReplacementNavigate(context, '/signup');
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
        ],
      ),
    );
  }
}
