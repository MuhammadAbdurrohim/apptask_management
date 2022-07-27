import 'package:apptask_management/app/data/controller/auth_controller.dart';
import 'package:apptask_management/app/routes/app_pages.dart';
import 'package:apptask_management/app/utils/style/AppColors.dart';
import 'package:apptask_management/app/utils/widget/myTask.dart';
import 'package:apptask_management/app/utils/widget/profilewidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../utils/widget/Sidebar.dart';
import '../../../utils/widget/header.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150 , child: const SideBar()),
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(flex: 2, child: SideBar())
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  !context.isPhone
                      ? const header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: AppColors.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                //mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'AppTask Management',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColors.primaryText),
                                  ),
                                  const Text(
                                    'Bismillah pasti bisa jangan mengeluh',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText),
                                  )
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                onTap: () {
                  Get.defaultDialog(
                    title: 'Sign Out',
                    content: const Text('are you sure want to sign out?'),
                    cancel: ElevatedButton(
                      onPressed: () => Get.back(),
                      child: const Text('Cancel'),
                    ),
                    confirm: ElevatedButton(
                      onPressed: () => authC.logout(),
                      child: const Text('Sign Out'),
                    ),
                  );
                },
                child: Row(
                  children: [
                    const Text(
                      'Sign Out',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                        ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Ionicons.log_out_outline,
                        color: AppColors.primaryText,
                        size: 30,)
                  ],
                ),
              ),
                            ],
                          ),
                        ),
                  
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                            ? const EdgeInsets.all(50)
                            : const EdgeInsets.all(20),
                        margin: !context.isPhone
                            ? const EdgeInsets.all(20)
                            : const EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: !context.isPhone
                              ? BorderRadius.circular(50)
                              : BorderRadius.circular(30),
                        ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        profileW(),
                          Text(
                                    'My AppTask',
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 25,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                        SizedBox(
                          height: 200,
                          child: const MyTask()
                          ),
                      ],),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

