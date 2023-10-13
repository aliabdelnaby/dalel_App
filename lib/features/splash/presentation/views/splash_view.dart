import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../../core/database/cache/cache_helper.dart';
import '../../../../core/functions/navigation.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: 'isOnBoardingVisited') ?? false;
    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser == null
          ? delayedNavigate(context, '/signIn')
          : FirebaseAuth.instance.currentUser!.emailVerified == true
              ? delayedNavigate(context, "/homeNavBar")
              : delayedNavigate(context, "/signIn");
    } else {
      delayedNavigate(context, '/onboarding');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyle.pacifico400style64,
        ),
      ),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(
    const Duration(seconds: 2),
    () {
      customReplacementNavigate(context, path);
    },
  );
}
