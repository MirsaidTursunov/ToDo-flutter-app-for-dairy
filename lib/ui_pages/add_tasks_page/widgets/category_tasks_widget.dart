import 'package:flutter/material.dart';
import 'package:todo_app/constants/app_colors.dart';

class CategoryTasksWidget extends StatelessWidget {
  const CategoryTasksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.green1,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: AppColors.darkyellov, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5,),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'Personal',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.darkyellov,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: AppColors.darkyellov, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5,),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'Work',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.addblue1,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: AppColors.darkyellov, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5,),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'Meeting',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.floatpurple,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: AppColors.darkyellov, shape: BoxShape.circle),
                  ),
                  SizedBox(width: 5,),
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'Study',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
