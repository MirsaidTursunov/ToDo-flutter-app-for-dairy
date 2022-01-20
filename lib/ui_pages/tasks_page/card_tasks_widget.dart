import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/constants/app_colors.dart';

class CardTasksWidget extends StatelessWidget {
  const CardTasksWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: GridView.count(
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            Card(
              elevation: 8,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightyellov,
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/svg/user.svg',
                            ),
                          ),
                        ),
                      ),
                    ],),
                    const SizedBox(height: 10,),
                    const Text('Personal', style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 7,),
                    const Text('24 Tasks', style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightgreen,
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/svg/briefcase.svg',
                            ),
                          ),
                        ),
                      ),
                    ],),
                    const SizedBox(height: 10,),
                    const Text('Work', style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 7,),
                    const Text('24 Tasks', style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightred,
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/svg/presentation.svg',
                            ),
                          ),
                        ),
                      ),
                    ],),
                    const SizedBox(height: 10,),
                    const Text('Meeting', style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 7,),
                    const Text('24 Tasks', style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightbrown,
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/svg/shopping_basket.svg',
                            ),
                          ),
                        ),
                      ),
                    ],),
                    const SizedBox(height: 10,),
                    const Text('Shopping', style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 7,),
                    const Text('24 Tasks', style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
            ),
            Card(
              elevation: 8,
              child: Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightyellov,
                          ),
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/svg/user.svg',
                            ),
                          ),
                        ),
                      ),
                    ],),
                    const SizedBox(height: 10,),
                    const Text('Personal', style: TextStyle(fontSize: 20),),
                    const SizedBox(height: 7,),
                    const Text('24 Tasks', style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
