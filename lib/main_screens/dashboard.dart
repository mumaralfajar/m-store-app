import 'package:flutter/material.dart';
import 'package:maru_store_app/widgets/appbar_widgets.dart';

List<String> label = [
  'My Store',
  'Orders',
  'Edit Profile',
  'Manage Products',
  'Balance',
  'Statics'
];

List<IconData> icons = [
  Icons.store,
  Icons.shop_2_rounded,
  Icons.edit,
  Icons.settings,
  Icons.attach_money,
  Icons.show_chart,
];

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const AppBarTitle(
          title: 'Dashboard',
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          mainAxisSpacing: 25,
          crossAxisSpacing: 25,
          crossAxisCount: 2,
          children: List.generate(6, (index) {
            return Card(
              elevation: 20,
              shadowColor: Colors.lightBlueAccent,
              color: Colors.blueGrey.shade700.withOpacity(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[index],
                    color: Colors.lightBlue.shade400,
                    size: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      label[index],
                      style: TextStyle(
                          letterSpacing: 2,
                          color: Colors.lightBlueAccent.shade100,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Acme'),
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
