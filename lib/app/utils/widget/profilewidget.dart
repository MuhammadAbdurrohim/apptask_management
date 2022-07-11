

import 'package:apptask_management/app/utils/style/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profileW extends StatelessWidget {
  const profileW({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone ? Row(
        children: [
        const Expanded(
          flex: 1,
            child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                    ),
                  ),
          ),
                //SizedBox(width: 30,),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                      'Muhammad Abdurrohim',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 40,
                      ),
                                                ),
                                                Text(
                      'muhamadrohim183@gmail.com',
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 16,
                      ),
                                                ),
                    ],
                  ),
                ),
        ],
      )
      :Center(
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
          ClipRect(
          child: CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 150,
          foregroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                  ),
                ),
                SizedBox(
                  height: 20,
                  ),
                  Text(
                  'Muhammad Abdurrohim',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 40,
                  ),
                                            ),
                                            Text(
                  'muhamadrohim183@gmail.com',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                  ),
                                            ),
          ],
        ),
      ),
      );
  }
}