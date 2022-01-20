import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/controller/add_task_page_controller.dart';
import 'package:todo_app/data/data_source/local_source.dart';
import 'package:todo_app/data/floor/entity/tasks.dart';
import 'package:todo_app/ui_pages/add_tasks_page/widgets/category_tasks_widget.dart';

class AddTasksPage extends GetView<AddTaskPageController> {
  AddTasksPage({Key? key}) : super(key: key);
  final FocusNode text = FocusNode();

  @override
  Widget build(BuildContext context) {
    text.requestFocus();
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 100, maxHeight: Get.height * 0.45),
      child: StreamBuilder<List<Tasks>>(
          stream: LocalSource.getInstance().getTasks(),
          builder: (context, snapshot) {
            bool hasTasks = false;
            if (snapshot.hasData) {
              for (var element in snapshot.data!) {
                hasTasks = true;
              }
            }
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.transparent,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerTop,
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Get.back();
                },
                backgroundColor: AppColors.floatpurple,
                child: const Icon(
                  Icons.clear_rounded,
                  size: 50,
                ),
              ),
              body: GetBuilder<AddTaskPageController>(
                builder: (controller) {
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              topLeft: Radius.circular(50)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              const Center(child: Text('Add new task')),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              TextFormField(
                                controller: controller.addTextController,
                                focusNode: text,
                                autofocus: true,
                              ),
                              const CategoryTasksWidget(),
                              const Divider(
                                height: 5,
                                thickness: 2,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  await controller.chooseDay();
                                  await controller.chooseTime();
                                },
                                child: Row(
                                  children: const [
                                    Text('Choose date'),
                                    Icon(Icons.arrow_drop_down),
                                  ],
                                ),
                              ),
                              Obx(
                                () => Row(
                                  children: [
                                    Text(
                                      DateFormat("MMMM-d,")
                                          .format(controller.resultDay.value)
                                          .toString(),
                                    ),
                                    SizedBox(width: 5,),
                                    Text('${controller.resultTime.value.startTime.hour}:${controller.resultTime.value.startTime.minute} - ${controller.resultTime.value.endTime.hour}:${controller.resultTime.value.endTime.minute}'),
                                  ],
                                ),
                              ),

                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              bottomNavigationBar: Container(
                color: AppColors.white,
                height: 57,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 5),
                  child: Container(
                      height: 53,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(colors: [
                            AppColors.addblue1,
                            AppColors.addblue2,
                          ])),
                      child: MaterialButton(
                        onPressed: ()  async{
                         if (true) {
                            LocalSource.getInstance().insertTask(Tasks(
                                time:'${controller.resultTime.value.startTime.hour}:${controller.resultTime.value.startTime.minute} - ${controller.resultTime.value.endTime.hour}:${controller.resultTime.value.endTime.minute}',
                                // time: DateTime.now().toString(),
                                dailyTaskText:
                                    controller.addTextController.text));
                          }
                         Get.back();
                        },
                        child: const Text(
                          'Add task',
                          style:
                              TextStyle(fontSize: 18, color: AppColors.white),
                        ),
                      )),
                ),
              ),
            );
          }),
    );
  }
}
