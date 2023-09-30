import '../../features/home/presentation/views/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import '../../features/auth/presentation/views/signin_view.dart';
import '../../features/auth/presentation/views/signup_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
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
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          )),
    ),
    GoRoute(
      path: '/signIn',
      builder: ((context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInView(),
          )),
    ),
    GoRoute(
      path: '/home',
      builder: ((context, state) => const HomeView()),
    ),
  ],
);
