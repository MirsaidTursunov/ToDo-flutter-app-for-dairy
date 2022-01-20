import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/controller/main_controller.dart';
import 'package:todo_app/ui_pages/add_tasks_page/add_tasks_page.dart';
import 'package:todo_app/ui_pages/home/home_page.dart';
import 'package:todo_app/ui_pages/tasks_page/tasks_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomePage(),
           // AddTasksPage(),
            TasksPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.floatpurple,
          onPressed: () {
            Get.bottomSheet(
              AddTasksPage(),
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
            );
          },
          child: const Icon(
            Icons.add_rounded,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          currentIndex: controller.tabIndex,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          onTap: controller.changeTabIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home_outlined),
            ),
            BottomNavigationBarItem(
              label: 'Tasks',
              icon: Icon(Icons.grid_view),
            ),
          ],
        ),
      );
    });
  }
}
