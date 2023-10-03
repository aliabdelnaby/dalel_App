import 'package:flutter/material.dart';

import '../../../../core/functions/navigation.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_sign_up_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcome_text_widget.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome)),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(child: CustomSignUpForm()),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                onTap: () {
                  customReplacementNavigate(context, '/signin');
                },
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signIn,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
