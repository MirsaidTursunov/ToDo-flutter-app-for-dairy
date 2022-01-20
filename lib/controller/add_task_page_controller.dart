import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:time_range_picker/time_range_picker.dart';
import 'package:todo_app/base/base_controller.dart';

class AddTaskPageController extends BaseController {
  final addTextController = TextEditingController();
  var resultDay = DateTime.now().obs;
  var resultTime = TimeRange(startTime: const TimeOfDay(hour: 9, minute: 0), endTime: const TimeOfDay(hour: 12, minute: 0)).obs;

  @override
  void onReady() {
    super.onReady();
  }

  chooseDay() async {
    DateTime? pickedDay = await showDatePicker(
      context: Get.context!,
      initialDate: resultDay.value,
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (pickedDay != null && pickedDay != resultDay.value) {
      resultDay.value = pickedDay;
    }
  }

  chooseTime() async {
    TimeRange? pickedTime = await showTimeRangePicker(
      context: Get.context!,
    );
    if (pickedTime != null) {
      resultTime.value = pickedTime;
    }
  }
}
