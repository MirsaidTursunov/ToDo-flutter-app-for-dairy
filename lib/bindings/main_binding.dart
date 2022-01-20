import 'package:get/get.dart';
import 'package:todo_app/controller/add_task_page_controller.dart';
import 'package:todo_app/controller/home_controller.dart';
import 'package:todo_app/controller/main_controller.dart';
import 'package:todo_app/controller/start_page_controller.dart';

class MainBinding extends Bindings{
@override
  void dependencies() {
    // TODO: implement dependencies
Get.lazyPut(() => StartPageController());
Get.lazyPut(() => MainController());
Get.lazyPut(() => HomeController(), fenix: true);
Get.lazyPut(() => AddTaskPageController(), fenix: true);
  }
}