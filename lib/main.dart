import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tabnews/core/bindings/initial_binding.dart';
import 'package:tabnews/core/routes/app_pages.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/theme/app_theme.dart';
import 'package:tabnews/core/theme/extensions/theme_colors_extension.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TabNews',
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.initial,
      getPages: AppPages.pages,
      theme: AppTheme.get(isDark: false),
      darkTheme: AppTheme.get(isDark: true),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
      builder: (context, child) {
        final colors = Theme.of(context).extension<ThemeColors>()!;
        return ColoredBox(
          color: colors.background,
          child: child,
        );
      },
    );
  }
}
