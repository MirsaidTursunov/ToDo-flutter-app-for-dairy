import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:todo_app/bindings/main_binding.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/data/data_source/local_source.dart';
import 'package:todo_app/data/floor/app_database.dart';
import 'package:todo_app/routes/app_pages.dart';
import 'package:todo_app/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.init();
  await GetStorage.init();
  final currentLocale =  LocalSource.getInstance().getLocale();
  runApp(MyApp(currentLocale: currentLocale));
}

class MyApp extends StatelessWidget {
  final String currentLocale;

  const MyApp({Key? key, required this.currentLocale}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [GestureType.onTap],
      child: GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
        ),
        initialBinding: MainBinding(),
        initialRoute: Routes.INITIAL,
        getPages: AppPages.pages,
        locale: Locale(currentLocale),
        onInit: () {},
      ),
    );
  }
}
