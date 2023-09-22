import 'package:dalil/core/services/service_locator.dart';
import 'package:dalil/features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import 'package:dalil/features/auth/presentation/views/signin_view.dart';
import 'package:dalil/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalil/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/signup_view.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: ((context, state) => const SplashView()),
  ),
  GoRoute(
    path: '/onboarding',
    builder: ((context, state) => const OnBoardingView()),
  ),
  GoRoute(
    path: '/signup',
    builder: ((context, state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const SignUpView(),
        )),
  ),
  GoRoute(
    path: '/signin',
    builder: ((context, state) => BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const SignInView(),
        )),
  ),
  // GoRoute(
  //   path: '/forgotpassword',
  //   builder: ((context, state) => const ForgotPassword()),
  // ),
]);
