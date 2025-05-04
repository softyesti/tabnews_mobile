import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tabnews/core/bindings/initial_binding.dart';
import 'package:tabnews/core/drivers/storage_driver.dart';
import 'package:tabnews/core/routes/app_pages.dart';
import 'package:tabnews/core/routes/app_routes.dart';
import 'package:tabnews/core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _setupChrome();
  await _setupStorage();
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
      theme: const AppTheme(
        isDark: false,
        colors: AppThemeColors.modern,
      ).get(),
      darkTheme: const AppTheme(
        isDark: true,
        colors: AppThemeColors.modern,
      ).get(),
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
      builder: (context, child) {
        _setSystemUI(context);
        return child ?? const SizedBox.shrink();
      },
    );
  }
}

void _setupChrome() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  _setSystemUI();
}

void _setSystemUI([BuildContext? context]) {
  final theme = context?.theme;
  Brightness? brightness;
  switch (theme?.brightness) {
    case Brightness.light:
      brightness = Brightness.dark;
    case Brightness.dark:
      brightness = Brightness.light;
    default:
      brightness = null;
  }

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: brightness,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarContrastEnforced: false,
      systemNavigationBarIconBrightness: brightness,
      systemNavigationBarColor: Colors.transparent,
    ),
  );
}

Future<void> _setupStorage() async {
  final directory = await getApplicationDocumentsDirectory();
  final path = directory.path;

  Hive.init(path);
  final driver = await StorageDriverImpl.initialize(
    'TabNews',
    {'theme', 'favorites'},
    path: path,
  );

  Get.lazyPut<StorageDriver>(() => driver, fenix: true);
}
