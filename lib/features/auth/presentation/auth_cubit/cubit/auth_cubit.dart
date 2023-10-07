import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool? termsAndConditionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signupformkey = GlobalKey();
  GlobalKey<FormState> signinformkey = GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey();

  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      await addUserProfile();
      await verifyEmail();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpFailureState(
            errMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpFailureState(
            errMessage: 'The account already exists for that email.'));
      } else if (e.code == 'invalid-email') {
        emit(SignUpFailureState(errMessage: 'The email is invalid.'));
      } else {
        emit(SignUpFailureState(errMessage: e.code));
      }
    } catch (e) {
      emit(SignUpFailureState(errMessage: e.toString()));
    }
  }

  verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  updateTermsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndComnditionUpateState());
  }

  obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureState(errMessage: "No user found for that email."));
      } else if (e.code == 'wrong-password') {
        emit(SignUpFailureState(
            errMessage: "Wrong password provided for that user."));
      } else {
        emit(SignInFailureState(errMessage: 'Check your Email and password!'));
      }
    } catch (e) {
      emit(SignInFailureState(errMessage: e.toString()));
    }
  }

  resetPasswordWithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ResetPasswordSuccessState());
    } catch (e) {
      emit(ResetPasswordFailureState(errMessage: e.toString()));
    }
  }

  addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    await users.add({
      "email": emailAddress,
      "first_name": firstName,
      "last_name": lastName,
    });
  }
}
