import 'package:flutter/material.dart';

import '../minor_screens/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SearchScreen()));
      },
      child: Container(
        height: 36,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1.4),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'What are you looking for?',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
            Container(
              height: 36,
              width: 74,
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(6)),
              child: const Center(
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
