import 'package:dalel_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String onBoarding = '/onBoarding';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRouter.onBoarding,
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
