import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/ui_pages/tasks_page/card_tasks_widget.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ntask = 10;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 140,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        AppColors.recolor2,
                        AppColors.recolor1,
                      ]
                  )
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello Mirsaid',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Today you have $ntask tasks',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                      color: AppColors.white, shape: BoxShape.circle),
                  child: MaterialButton(
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const CardTasksWidget(),
        ],
      ),
    );
  }
}
