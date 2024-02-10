import 'package:flutter/material.dart';
import 'package:tuko_app/components/item_list.dart';
import 'package:tuko_app/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage();
  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Ichi',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        enName: 'Brown',
        jpName: 'Ni',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'Dusty Yellow',
      jpName: 'San',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Shi',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      enName: 'Green',
      jpName: 'Go',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      enName: 'Red',
      jpName: 'Roku',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      enName: 'White',
      jpName: 'Sebun',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        enName: 'Yellow',
        jpName: 'hachi',
        sound: 'sounds/colors/yellow.wav'),
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Ichi',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Gure',
      sound: 'sounds/colors/gray.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          print(index);
          return ItemList(
            item: numbers[index],
            color: Color(0xff79359f),
          );
        },
      ),
    );
  }

// Another solution for list by method
  // List<Item> getList(List<Number> numbers) {
  //   List<Item> listItem = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     listItem.add(Item(number: numbers[i]));
  //   }
  //   return listItem;
  // }
}
