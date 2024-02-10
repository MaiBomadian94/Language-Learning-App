import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuko_app/models/item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(children: [
        Container(color: Color(0xffFFF6DC), child: Image.asset(item.image)),
        Expanded(child: ItemInfo(item: item)),
      ]),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              item.jpName,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(item.enName,
                style: TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
      ),
      Spacer(
        flex: 1,
      ),
      IconButton(
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 28,
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(item.sound));
          })
    ]);
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: ItemInfo(
          item: item,
        ));
  }
}
