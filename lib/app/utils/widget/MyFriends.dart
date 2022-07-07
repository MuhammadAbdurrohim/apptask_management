import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../../routes/app_pages.dart';
import '../style/AppColors.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'My Friends',
                    style:
                        TextStyle(color: AppColors.primaryText, fontSize: 20),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.FRIENDS),
                    child: const Text(
                      'More',
                      style:
                          TextStyle(color: AppColors.primaryText, fontSize: 16),
                    ),
                  ),
                  const Icon(
                    Ionicons.chevron_forward,
                    color: AppColors.primaryText,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 40,
                            foregroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                          ),
                        ),
                        Text('Muhammad Abdurrohim',
                            style: TextStyle(color: AppColors.primaryText))
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}