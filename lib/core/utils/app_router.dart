import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/features/cart/presentation/views/cart_view.dart';
import 'package:dalel_app/features/forget_password/presentation/views/forget_password_view.dart';
import 'package:dalel_app/features/forget_password/presentation/views/verify_password_view.dart';
import 'package:dalel_app/features/home/presentation/views/home_bottom_nav_bar.dart';
import 'package:dalel_app/features/home/presentation/views/home_view.dart';
import 'package:dalel_app/features/login/presentation/views/login_view.dart';
import 'package:dalel_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel_app/features/profile/presentation/views/profile_view.dart';
import 'package:dalel_app/features/register/presentation/view_models/cubit/register_cubit.dart';
import 'package:dalel_app/features/register/presentation/views/register_view.dart';
import 'package:dalel_app/features/search/presentation/views/search_view.dart';
import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String onBoarding = '/onBoarding';
  static const String registerView = '/registerView';
  static const String loginView = '/loginView';
  static const String forgetPasswordView = '/forgetPasswordView';
  static const String verifyPasswordView = '/verifyPasswordView';
  static const String homeView = '/homeView';
  static const String homeNavBar = '/homeNavBar';
  static const String searchView = '/searchView';
  static const String cartView = '/cartView';
  static const String profileView = '/profileView';

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
        builder: (context, state) => BlocProvider(
          create: (context) => getIt<RegisterCubit>(),
          child: const RegisterView(),
        ),
      ),
      GoRoute(
        path: AppRouter.loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: AppRouter.forgetPasswordView,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: AppRouter.verifyPasswordView,
        builder: (context, state) => const VerifyPasswordView(),
      ),
      GoRoute(
        path: AppRouter.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRouter.cartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: AppRouter.searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: AppRouter.profileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: AppRouter.homeNavBar,
        builder: (context, state) => const HomeBottomNavBar(),
      ),
    ],
  );
}
