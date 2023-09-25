import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/core/widgets/custom_button.dart';
import 'package:dalil/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalil/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:dalil/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_text_field.dart';

class CustomSignUp extends StatelessWidget {
  const CustomSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              CustomTextFormField(
                labelText: AppStrings.fristName,
                onChanged: (firstname) {
                  BlocProvider.of<AuthCubit>(context).firstName = firstname;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.emailAddress,
                onChanged: (emailAddress) {
                  BlocProvider.of<AuthCubit>(context).emailAddress =
                      emailAddress;
                },
              ),
              CustomTextFormField(
                labelText: AppStrings.password,
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                },
              ),
              const TermsAndConditionWidget(),
              const SizedBox(height: 88),
              CustomBtn(
                onPressed: () {
                  BlocProvider.of<AuthCubit>(context)
                      .signUpWithEmailAndPassword();
                },
                text: AppStrings.signUp,
              ),
            ],
          ),
        );
      },
    );
  }
}
