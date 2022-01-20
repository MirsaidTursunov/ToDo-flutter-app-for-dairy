import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/app_colors.dart';
import 'package:todo_app/controller/start_page_controller.dart';
import 'package:todo_app/routes/app_routes.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StartPageController>(
      builder: (controller) => SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: SvgPicture.asset('assets/svg/start.svg'),
              ),
              const Text(
                'Reminders made simple',
                style: TextStyle(fontSize: 22, color: AppColors.abs),
              ),
              Container(
                width: 256,
                height: 56,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [ BoxShadow(
                    color:  AppColors.green3,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 7.0),
                  )],
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.green1,
                      AppColors.green2,
                    ]
                  )
                ),
                child: MaterialButton(
                  onPressed: () {
                    Get.toNamed(Routes.MAIN);
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 15, color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
