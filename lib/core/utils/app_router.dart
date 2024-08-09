import 'package:dalel_app/features/forget_password/presentation/views/forget_password_view.dart';
import 'package:dalel_app/features/login/presentation/views/login_view.dart';
import 'package:dalel_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel_app/features/register/presentation/views/register_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String onBoarding = '/onBoarding';
  static const String registerView = '/registerView';
  static const String loginView = '/loginView';
  static const String forgetPasswordView = '/forgetPasswordView';
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
      GoRoute(
        path: AppRouter.registerView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: AppRouter.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRouter.forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
    ],
  );
}
