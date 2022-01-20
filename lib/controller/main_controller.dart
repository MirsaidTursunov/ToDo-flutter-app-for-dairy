import 'package:todo_app/base/base_controller.dart';

class MainController extends BaseController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
