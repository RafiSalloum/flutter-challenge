import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Middle Tab Bar'),
      ),
        body: DefaultTabController(
        length: 3, // Number of tabs
        initialIndex: 0, // Initial tab index
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1 content
                  Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text('Tab 1 Content'),
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
                ],
              ),
            ),
            const SizedBox(
              height: 48, // Height of the tab bar
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'Tab 1',
                  ),
                  Tab(
                    text: 'Tab 2',
                  ),
                  Tab(
                    text: 'Tab 3',
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
