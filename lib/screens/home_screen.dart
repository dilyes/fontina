import 'package:flutter/material.dart';
import 'package:fontina/dependencies/side_navigation_dep.dart';
import 'package:fontina/util/responsive.dart';
import 'package:fontina/util/theme.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (Responsive.isMobile(context))
                  IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Get.find<SideMenuController>().controlMenu();
                      },
                      icon: Icon(
                        Icons.vertical_split_sharp,
                        color: MyTheme.primaryColorLight,
                        size: 40,
                      )),
                if (Responsive.isMobile(context))
                  SizedBox(
                    width: 20,
                  ),
          Text("Home"),
        ],
      ),
    );
  }
}