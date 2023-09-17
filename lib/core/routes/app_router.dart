import 'package:dalil/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalil/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: ((context, state) => const SplashView()),
  ),
  GoRoute(
    path: '/onboarding',
    builder: ((context, state) => const OnBoardingView()),
  ),
]);
