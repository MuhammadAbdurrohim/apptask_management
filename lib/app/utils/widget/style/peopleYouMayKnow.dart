import 'package:apptask_management/app/data/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class PeopleYouKnow extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.antiAlias,
        itemCount: 10,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(children: [
              ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: const Image(
                                            image: NetworkImage(
                'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                                    ),
                                  ),
                                  const Positioned(
                                    bottom: 10,
                                    left: 50,
                                    child: Text(
                                      'Muhammad Abdurrohim', 
                                      style: TextStyle(color: Colors.white),
                                      ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: SizedBox(
                                          height: 36,
                                          width: 36,
                                          child: ElevatedButton(
                                            onPressed: (){},
                                            style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(50),
                                                ),
                                            ),
                                          child: Icon(Ionicons.add_circle_outline),
                                          ),
                                        ),
                                        ),
            ],
            ),
          );
        }, 
      ),
    );
  }
}