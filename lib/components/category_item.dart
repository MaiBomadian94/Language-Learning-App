import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  final String text;
  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.centerLeft,
          color: color,
          height: 65,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    );
  }
}
