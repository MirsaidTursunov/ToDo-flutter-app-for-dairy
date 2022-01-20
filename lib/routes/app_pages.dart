import 'package:get/get.dart';
import 'package:todo_app/bindings/main_binding.dart';
import 'package:todo_app/routes/app_routes.dart';
import 'package:todo_app/ui_pages/add_tasks_page/add_tasks_page.dart';
import 'package:todo_app/ui_pages/main_page/main_page.dart';
import 'package:todo_app/ui_pages/start_page/start_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const StartPage(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => const MainPage(),
      binding: MainBinding(),
    ),
    GetPage(
        name: Routes.ADD_TASK,
        page: () =>  AddTasksPage(),
        binding: MainBinding()),
  ];
}
