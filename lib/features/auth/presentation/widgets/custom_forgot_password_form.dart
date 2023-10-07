import 'package:dalil/core/functions/custom_toast.dart';
import 'package:dalil/core/functions/navigation.dart';
import 'package:dalil/core/utils/app_colors.dart';
import 'package:dalil/core/utils/app_strings.dart';
import 'package:dalil/core/widgets/custom_button.dart';
import 'package:dalil/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalil/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_text_field.dart';

class CustomForgotPasswrodForm extends StatelessWidget {
  const CustomForgotPasswrodForm({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccessState) {
          showToast("Check Your Email To Reset Your Password");
          customReplacementNavigate(context, "/signIn");
        } else if (state is ResetPasswordFailureState) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: authCubit.forgotPasswordFormKey,
            child: Column(
              children: [
                CustomTextFormField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (email) {
                    authCubit.emailAddress = email;
                  },
                ),
                const SizedBox(height: 129),
                state is ResetPasswordLoadingState
                    ? CircularProgressIndicator(color: AppColors.primaryColor)
                    : CustomBtn(
                        onPressed: () {
                          if (authCubit.forgotPasswordFormKey.currentState!
                              .validate()) {
                            authCubit.resetPasswordWithLink();
                          }
                        },
                        text: AppStrings.sendResetPasswordLink,
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
