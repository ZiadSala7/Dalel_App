import 'package:dalel_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
