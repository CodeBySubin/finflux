import 'package:finflux/features/authentication/domain/entities/auth_user.dart';
import 'package:finflux/features/authentication/presentation/page/finger_prints.dart';
import 'package:finflux/features/authentication/presentation/page/login.dart';
import 'package:finflux/features/authentication/presentation/page/otp.dart';
import 'package:finflux/features/authentication/presentation/page/register.dart';
import 'package:finflux/features/home/presentation/pages/home.dart';
import 'package:finflux/features/onboardings/presentation/onboarding.dart';
import 'package:finflux/features/onboardings/presentation/splash.dart';
import 'app_routes.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.home,
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

      //Authentication
      GoRoute(
        path: AppRoutes.login,
        name: RouteNames.login,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: AppRoutes.register,
        name: RouteNames.register,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: AppRoutes.fingerPrint,
        name: RouteNames.fingerPrint,
        builder: (context, state) => const FingerPrints(),
      ),
      GoRoute(
        path: AppRoutes.otp,
        name: RouteNames.otp,
     builder: (context, state) {
    final authUser = state.extra as AuthUser;
    return Otp(user: authUser);
  },
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
