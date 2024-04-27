import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:streamed_demo_app/controllers/onboarding/onboarding_view_controller.dart';
import 'package:streamed_demo_app/controllers/theme/theme_controller.dart';
import 'package:streamed_demo_app/res/constants/app_constants.dart';
import 'package:streamed_demo_app/res/theme/app_theme.dart';
import 'package:streamed_demo_app/res/routes/app_keys.dart';
import 'package:streamed_demo_app/res/routes/app_named_routes.dart';
import 'package:streamed_demo_app/res/routes/route_generator.dart';

class StreamedApp extends StatelessWidget {
  const StreamedApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<OnboardingViewController>(
          create: (context) => OnboardingViewController(),
        ),
        ChangeNotifierProvider<ThemeController>(
          create: (context) => ThemeController(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, widget) {
          return MaterialApp(
            color: accentBlueColor,
            theme: AppTheme.darkTheme(),
            debugShowCheckedModeBanner: false,
            navigatorKey: AppKeys.navigationKey,
            initialRoute: AppNamedRoutes.initialRoute,
            onGenerateRoute: RouteGenerator.generateRoute,
          );
        },
      ),
    );
  }
}
