import 'package:dalil/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalil/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/views/forgot_password.dart';
import '../../features/auth/presentation/views/signin.dart';
import '../../features/auth/presentation/views/signup.dart';

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
    builder: ((context, state) => const SignUpView()),
  ),
  // GoRoute(
  //   path: '/signin',
  //   builder: ((context, state) => const SignInView()),
  // ),
  // GoRoute(
  //   path: '/forgotpassword',
  //   builder: ((context, state) => const ForgotPassword()),
  // ),
]);
