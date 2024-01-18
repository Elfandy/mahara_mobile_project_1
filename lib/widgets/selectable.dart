import 'package:flutter/material.dart';

class Selectable extends StatefulWidget {
  Selectable({super.key, required this.image, required this.title});
  ImageProvider image;
  String title;
  @override
  State<Selectable> createState() => _SelectableState();
}

class _SelectableState extends State<Selectable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     color: const Color.fromARGB(20, 100, 100, 100),
      //     borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 110,
            decoration: BoxDecoration(
              image: DecorationImage(image: widget.image, fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: SizedBox(
              width: 180,
              child: Text(
                widget.title,
                style: const TextStyle(fontSize: 17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
