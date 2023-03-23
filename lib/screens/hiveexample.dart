import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

// void main() async {
//   await Hive.initFlutter();
//   await Hive.openBox('selectedItems');
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Selected Items',
//       home: HomePage(),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selected Items'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          String item = items[index];
          bool isSelected = selectedItems.contains(item);
          return ListTile(
            title: Text(item),
            trailing: Icon(
                isSelected ? Icons.check_box : Icons.check_box_outline_blank),
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedItems.remove(item);
                } else {
                  selectedItems.add(item);
                }
                saveSelectedItems();
              });
            },
          );
        },
      ),
    );
  }

  void saveSelectedItems() {
    var box = Hive.box('selectedItems');
    List<String> itemList = selectedItems.toList();
    String itemListJson = jsonEncode(itemList);
    box.put('items', itemListJson);
    print(itemList);
  }
}
