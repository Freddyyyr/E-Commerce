import 'package:e_commerce/core/routing/router_generation_config.dart';
import 'package:e_commerce/core/styling/theme_data.dart';
import 'package:e_commerce/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: AppThemes.lightTheme,
          routerConfig: RouterGenerationConfig.goRouter,
        );
      },
    );
  }
}
