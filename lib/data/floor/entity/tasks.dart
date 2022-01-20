import 'package:floor/floor.dart';

@entity
class Tasks {
  @primaryKey
  String time;
  String dailyTaskText;


  Tasks(
      {required this.time,
        required this.dailyTaskText,

      });
}
