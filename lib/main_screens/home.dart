import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const CupertinoSearchTextField(),
          bottom: const TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            tabs: [
              RepeatedTabs(label: 'Men'),
              RepeatedTabs(label: 'Women'),
              RepeatedTabs(label: 'Shoes'),
              RepeatedTabs(label: 'Bags'),
              RepeatedTabs(label: 'Electronics'),
              RepeatedTabs(label: 'Accessories'),
              RepeatedTabs(label: 'Home & Garden'),
              RepeatedTabs(label: 'Kids'),
              RepeatedTabs(label: 'Beauty'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Men Screen')),
            Center(child: Text('Women Screen')),
            Center(child: Text('Shoes Screen')),
            Center(child: Text('Bags Screen')),
            Center(child: Text('Electronics Screen')),
            Center(child: Text('Accessories Screen')),
            Center(child: Text('Home & Garden Screen')),
            Center(child: Text('Kids Screen')),
            Center(child: Text('Beauty Screen')),
          ],
        ),
      ),
    );
  }
}

class RepeatedTabs extends StatelessWidget {
  final String label;
  const RepeatedTabs({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        label,
        style: TextStyle(color: Colors.grey.shade600),
      ),
    );
  }
}
