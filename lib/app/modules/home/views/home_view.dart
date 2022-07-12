import 'package:apptask_management/app/utils/widget/myTask.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../../utils/style/AppColors.dart';
import '../../../utils/widget/MyFriends.dart';
import '../../../utils/widget/Sidebar.dart';
import '../../../utils/widget/header.dart';
import '../../../utils/widget/upcomingTask.dart';
import '../controllers/home_controller.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
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
                                    'Kuis pertemuan 14',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.primaryText),
                                  )
                                ],
                              ),
                              const Spacer(),
                              const Icon(
                                Ionicons.notifications,
                                color: AppColors.primaryText,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: const Image(
                                image: NetworkImage(
                                      'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                                ),
                              ),
                            ],
                          ),
                        ),
                  //content / isi page / screen
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
                        children: [
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [ 
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
                                //my task
                                MyTask(),
                              ],
                            ),
                          ),
                          !context.isPhone
                              ? Expanded(
                                  child: Row(
                                    children: const [
                                      UpcomingTask(),
                                      MyFriends(),
                                    ],
                                  ),
                                )
                              : const UpcomingTask(),
                        ],
                      ),
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


