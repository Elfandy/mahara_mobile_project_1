import 'package:flutter/material.dart';

class SelectionTile extends StatefulWidget {
  SelectionTile(
      {super.key, required this.icon, required this.image, required this.text});
  String text;
  ImageProvider image;
  ImageProvider icon;
  @override
  State<SelectionTile> createState() => _SelectionTileState();
}

class _SelectionTileState extends State<SelectionTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(20, 100, 100, 100)),
        clipBehavior: Clip.antiAlias,
        child: Stack(children: [
          SizedBox(
            height: 110,
            width: 200,
            child: Image(
              image: widget.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 15,
            top: 80,
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child: Image(image: widget.icon),
            ),
          ),
          Positioned(
              top: 150,
              left: 15,
              child: SizedBox(
                width: 180,
                child: Text(
                  widget.text,
                  style: TextStyle(fontSize: 18),
                ),
              )),
        ]),
      ),
    );
  }
}
