import 'package:flutter/material.dart';
import 'package:flutter_clone/src/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';

import 'components/image_data.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Obx(
          () => Scaffold(
            appBar: AppBar(),
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: [
                Container(
                  child: Center(child: Text('Home')),
                ),
                Container(
                  child: Center(child: Text('Search')),
                ),
                Container(
                  child: Center(child: Text('Upload')),
                ),
                Container(
                  child: Center(child: Text('Activity')),
                ),
                Container(
                  child: Center(child: Text('MyPage')),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: controller.pageIndex.value,
                elevation: 0,
                onTap: controller.changeBottomNav,
                items: [
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.homeOff),
                    activeIcon: ImageData(IconsPath.homeOn),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.searchOff),
                    activeIcon: ImageData(IconsPath.searchOn),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.uploadIcon),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageData(IconsPath.activeOff),
                    activeIcon: ImageData(IconsPath.activeOn),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        )),
                    label: 'home',
                  ),
                ]),
          ),
        ),

        //뒤로가기 종료
        onWillPop: () async {
          return false;
        });
  }
}
