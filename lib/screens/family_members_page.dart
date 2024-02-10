import 'package:flutter/material.dart';
import 'package:tuko_app/components/item_list.dart';
import 'package:tuko_app/models/item.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage();
  final List<ItemModel> numbers = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      enName: 'Father',
      jpName: 'Chich',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'Daughter',
        jpName: 'Ni',
        sound: 'sounds/family_members/daughter.wav'),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      enName: 'Grand Father',
      jpName: 'San',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      enName: 'Mother',
      jpName: 'Shi',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      enName: 'Grand Mother',
      jpName: 'Go',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      enName: 'Older Brother',
      jpName: 'Roku',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      enName: 'Older Sister',
      jpName: 'Sebun',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        enName: 'Son',
        jpName: 'hachi',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'Younger Brother',
        jpName: 'Kyu',
        sound: 'sounds/family_members/younger brohter.wav'),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      enName: 'Younger Sister',
      jpName: 'Ju',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          print(index);
          return ItemList(
            item: numbers[index],
            color: Color(0xff558b37),
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
