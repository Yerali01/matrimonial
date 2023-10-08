import 'package:anm_app/all_over_again/main/main_screen_veiw.dart';
import 'package:anm_app/all_over_again/profile/account_page_view.dart';
import 'package:anm_app/all_over_again/tabs/tabs_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class TabsPageView extends GetView<TabsPageController> {
class TabsPageView extends StatelessWidget {
  // const TabsPageView({Key? key}) : super(key: key);

  // static const routeName = "/tabsPage";

//   @override
//   _TabsPageViewState createState() => _TabsPageViewState();
// }

// class _TabsPageViewState extends State<TabsPageView> {
  // int _selectedIndex = 0;

  // static const _widgets = [ProfileTypeScreen(), AccountPage()];

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabsPageController>(builder: (controller) {
      return Scaffold(
        // appBar: AppBar(
        //   title: const Text("Matrimonial App"),
        //   actions: [
        //     IconButton(
        //       onPressed: () {
        //         // controller.logout();
        //         Get.find<TabsPageController>().logout();
        //       },
        //       icon: const Icon(Icons.logout_outlined),
        //     ),
        //   ],
        // ),
        // body: _widgets.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: "Account")
          ],
          currentIndex: controller.tabsIndex,
          onTap: Get.find<TabsPageController>().changeTabIndex,
        ),
        body: SafeArea(
          child: IndexedStack(
            index: Get.find<TabsPageController>().tabsIndex,
            children: [
              MainScreenView(),
              AccountPageView(),
            ],
          ),
        ),
      );
    });
  }
}
