import 'package:e_commerce/core/routing/app_routes.dart';
import 'package:e_commerce/core/utils/service_locator.dart';
import 'package:e_commerce/features/address/address_screen.dart';
import 'package:e_commerce/features/auth/cubit/auth_cubit.dart';
import 'package:e_commerce/features/auth/login_screen.dart';
import 'package:e_commerce/features/auth/register_screen.dart';
import 'package:e_commerce/features/layout/main_screen.dart';
import 'package:e_commerce/features/product/product_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.loginScreen,
    routes: [
      GoRoute(
        name: AppRoutes.loginScreen,
        path: AppRoutes.loginScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => sl<AuthCubit>(),
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.registerScreen,
        path: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        name: AppRoutes.mainScreen,
        path: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        name: AppRoutes.productScreen,
        path: AppRoutes.productScreen,
        builder: (context, state) => const ProductScreen(),
      ),
      GoRoute(
        name: AppRoutes.addressScreen,
        path: AppRoutes.addressScreen,
        builder: (context, state) => const AddressScreen(),
      ),
    ],
  );
}
