import 'package:dalil/core/functions/navigation.dart';

import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_sign_up_form.dart';
import '../widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/have_an_account.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 152)),
            const SliverToBoxAdapter(
                child: WelcomeTextWidget(text: AppStrings.welcome)),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(child: CustomSignUp()),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                onTap: () {
                  customNavigate(context, '/signin');
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
