import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/controller/home_controller.dart';
import 'package:todo_app/data/data_source/local_source.dart';
import 'package:todo_app/data/floor/entity/tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ntask = 10;
    return StreamBuilder<List<Tasks>>(
        stream: LocalSource.getInstance().getTasks(),
        builder: (context, snapshot) {
          List<Tasks> taskList = [];
          if (snapshot.hasData) {
            taskList = snapshot.data ?? [];
          }
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              flexibleSpace: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppColors.recolor2,
                  AppColors.recolor1,
                ])),
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
                )
              ],
            ),
            body: taskList.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SvgPicture.asset('assets/svg/no_task.svg'),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'No Tasks',
                        style: TextStyle(fontSize: 22, color: AppColors.abs),
                      ),
                    ],
                  )
                : GetBuilder<HomeController>(
                    builder: (controller) {
                      return ListView.builder(
                        itemCount: taskList.length,
                        itemBuilder: (context, index) {
                          return Slidable(
                            child: Card(
                              elevation: 2,
                              child: Container(
                                height: 56,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 5,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                        ),
                                        color: AppColors.floatpurple,
                                      ),
                                    ),
                                    Center(
                                      child: IconButton(
                                        padding: const EdgeInsets.all(0),
                                        onPressed: () {
                                          controller
                                              .changeColorF(!controller.click);
                                        },
                                        icon: controller.click
                                            ? const Icon(
                                                Icons.circle_outlined,
                                                color: AppColors.darker,
                                                size: 25,
                                              )
                                            : const Icon(
                                                Icons.check_circle_rounded,
                                                color: AppColors.greenCheck,
                                                size: 25,
                                              ),
                                      ),
                                    ),
                                    Text(taskList[index].time),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                          width: 175,
                                          child: Text(
                                            taskList[index].dailyTaskText,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                const TextStyle(fontSize: 18),
                                          )),
                                    ),
                                    IconButton(
                                      alignment: Alignment.centerRight,
                                      onPressed: () {
                                        controller
                                            .changeColorFF(!controller.click1);
                                      },
                                      icon: Icon(
                                        Icons.notifications,
                                        color: controller.click1
                                            ? AppColors.darker
                                            : AppColors.darkyellov,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            endActionPane: ActionPane(
                              motion: const ScrollMotion(),
                              children: [
                                MaterialButton(
                                    onPressed: (){},
                                    child: SvgPicture.asset('assets/svg/edit_task.svg'),
                                ),
                                MaterialButton(
                                  onPressed: (){
                                    LocalSource.getInstance()
                                        .removeTask(taskList[index]);
                                  },
                                  child: SvgPicture.asset('assets/svg/delete.svg'),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
          );
        });
  }
}
