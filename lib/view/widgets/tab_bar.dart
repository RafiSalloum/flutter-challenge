import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_flutter/controller/home_page_controller.dart';
import 'package:test_flutter/shared/local/constant/color.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageControllerImp>(
      builder: (controller) => DefaultTabController(
        length: controller.tabBarInfo.length,
        initialIndex: 0,
        child: Column(
          children: [
            SizedBox(
              height: 40, // Height of the tab bar
              child: TabBar(
                labelStyle: Theme.of(context).textTheme.headlineSmall,
                physics: const ClampingScrollPhysics(),
                tabs: [
                  Tab(
                    text: controller.tabBarInfo[0],
                  ),
                  Tab(
                    text: controller.tabBarInfo[1],
                  ),
                  Tab(
                    text: controller.tabBarInfo[2],
                  ),
                  Tab(
                    text: controller.tabBarInfo[3],
                  ),
                  Tab(
                    text: controller.tabBarInfo[4],
                  ),
                ],
              ),
            ),
            const Gap(10.0),
            SizedBox(
              height: 500.0,
              width: double.infinity,
              child: TabBarView(
                children: [
                  // Tab 1 content
                  GridView.count(
                    crossAxisCount: 2, // Number of columns in the grid
                    children: List.generate(
                      10, // Number of items in the grid
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: ColorApp.grey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                              ),
                              child: Center(
                                child: Text('Item $index'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 14.0, bottom: 44.0, right: 14.0, left: 14.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: ColorApp.grey,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://blog.shift4shop.com/hubfs/iStock-1051616786.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text('Label'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tab 2 content
                  Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text('Tab 2 Content'),
                    ),
                  ),
                  // Tab 3 content
                  Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text('Tab 3 Content'),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    child: const Center(
                      child: Text('Tab 4 Content'),
                    ),
                  ),
                  Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text('Tab 5 Content'),
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
