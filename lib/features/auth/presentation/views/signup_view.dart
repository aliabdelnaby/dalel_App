import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/features/auth/presentation/widgets/custom_sign_up.dart';
import 'package:dalil/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/have_an_account.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 152)),
            SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome)),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(child: CustomSignUp()),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
