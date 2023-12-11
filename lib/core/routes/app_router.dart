import 'package:dalil/features/home/data/models/historical_periods_models.dart';
import 'package:dalil/features/home/presentation/views/historical_periods_details_view.dart';

import '../../features/home/presentation/widgets/home_nav_bar_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/auth_cubit/cubit/auth_cubit.dart';
import '../../features/auth/presentation/views/forgot_password_view.dart';
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
      path: '/homeNavBar',
      builder: ((context, state) => const HomeNavBarWidget()),
    ),
    GoRoute(
      path: "/forgotPassword",
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
        child: const ForgotPasswordView(),
      ),
    ),
    GoRoute(
      path: "/historicalPeriodsDetailsView",
      builder: (context, state) => HistoricalPeriodsDetailsView(
        model: state.extra as HistoricalPeriodsModel,
      ),
    ),
  ],
);
