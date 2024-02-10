import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_item.dart';
import 'package:tuko_app/screens/colors_page.dart';
import 'package:tuko_app/screens/family_members_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: Color(0xffef9235),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
          ),
          Category(
            text: 'Family Members',
            color: Color(0xff558b37),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMemberPage();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: Color(0xff79359f),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: Color(0xff50adc7),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
