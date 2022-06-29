import 'package:flutter/material.dart';
import 'package:maru_store_app/widgets/fake_search.dart';

List<ItemsData> items = [
  ItemsData(label: 'Men'),
  ItemsData(label: 'Women'),
  ItemsData(label: 'Shoes'),
  ItemsData(label: 'Bags'),
  ItemsData(label: 'Electronics'),
  ItemsData(label: 'Accessories'),
  ItemsData(label: 'Home & Garden'),
  ItemsData(label: 'Kids'),
  ItemsData(label: 'Beauty'),
];

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
          Positioned(bottom: 0, right: 0, child: categView(size)),
        ],
      ),
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
      height: size.height * 0.821,
      width: size.width * 0.2,
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                for (var element in items) {
                  element.isSelected = false;
                }
                setState(() {
                  items[index].isSelected = true;
                });
              },
              child: Container(
                color: items[index].isSelected == true
                    ? Colors.white
                    : Colors.grey.shade600,
                height: 100,
                child: Center(
                  child: Text(
                    items[index].label,
                    style: TextStyle(
                        fontSize: 12,
                        color: items[index].isSelected == true
                            ? Colors.black
                            : Colors.white70),
                  ),
                ),
              ),
            );
          }),
    );
  }

  Widget categView(Size size) {
    return Container(
      height: size.height * 0.821,
      width: size.width * 0.8,
      color: Colors.white,
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
