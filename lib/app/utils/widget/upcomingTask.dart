import 'package:flutter/material.dart';

import '../style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Upcoming Task',
              style: TextStyle(color: AppColors.primaryText, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: ListView(
                clipBehavior: Clip.antiAlias,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 80,
                              color: AppColors.primaryBg,
                              child: const Center(
                                  child: Text(
                                '100%',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                ),
                              )),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBg,
                          child: const Center(
                            child: Text(
                              '10/10 task',
                              style: TextStyle(
                                color: AppColors.primaryText,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Pemrograman Mobile',
                          style: TextStyle(
                              color: AppColors.primaryText, fontSize: 20),
                        ),
                        const Text(
                          'Deadline',
                          style: TextStyle(
                              color: AppColors.primaryText, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.cardBg,
                    ),
                    margin: EdgeInsets.all(10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 20,
                                foregroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 25,
                              width: 80,
                              color: AppColors.primaryBg,
                              child: const Center(
                                  child: Text(
                                '100%',
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                ),
                              )),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBg,
                          child: const Center(
                            child: Text(
                              '10/10 task',
                              style: TextStyle(
                                color: AppColors.primaryText,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Pemrograman Mobile',
                          style: TextStyle(
                              color: AppColors.primaryText, fontSize: 20),
                        ),
                        const Text(
                          'Deadline',
                          style: TextStyle(
                              color: AppColors.primaryText, fontSize: 15),
                        ),
                      ],
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