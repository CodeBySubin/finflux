import 'package:finflux/features/authentication/presentation/page/login.dart';
import 'package:finflux/features/home/presentation/home.dart';
import 'package:finflux/features/onboardings/presentation/onboarding.dart';
import 'package:finflux/features/onboardings/presentation/splash.dart';
import 'app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        name: RouteNames.splash,
        builder: (context, state) => const Splash(),
      ),
      GoRoute(
        path: AppRoutes.home,
        name: RouteNames.home,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: RouteNames.onboarding,
        builder: (context, state) => const Onboardings(),
      ),
   GoRoute(
        path: AppRoutes.login,
        name: RouteNames.login,
        builder: (context, state) => const Login(),
      ),
      // GoRoute(
      //   path: '${AppRoutes.productDetail}/:id',
      //   name: RouteNames.productDetail,
      //   builder: (context, state) {
      //     final id = state.pathParameters['id']!;
      //     return ProductDetailPage(productId: id);
      //   },
      // ),
    ],
  );
}
