import 'package:todo_app/base/base_controller.dart';

class HomeController extends BaseController{

  bool click = true;
  bool click1 = true;

  void changeColorF(bool changeColor) {
    click = changeColor;
    update();
  }

  void changeColorFF(bool changeColor1) {
    click1 = changeColor1;
    update();
  }
}