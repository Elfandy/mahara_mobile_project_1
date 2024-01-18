import 'package:flutter/material.dart';
import 'package:maharah_project/Config/Data.dart';
import 'package:maharah_project/model/most_taken.dart';
import 'package:maharah_project/model/trending.dart';
import 'package:maharah_project/widgets/selectable.dart';
import 'package:maharah_project/widgets/selection_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Trending> trending = [
    Trending(
      text: "Chat with the smartest Ai now",
      image: const AssetImage("assets/images/cssImage.jpg"),
      icon: const AssetImage("assets/icons/62b221ef038aad4d3ed7ca2e.png"),
    ),
    Trending(
      text: "HTML Welcome form",
      image: const AssetImage("assets/images/HtmlImage.webp"),
      icon: const AssetImage("assets/icons/5847f5bdcef1014c0b5e489c.png"),
    ),
  ];

  List<MostTaken> mostTaken = [
    MostTaken(
        text: "UI/UX Visual Design",
        image: AssetImage("assets/images/photo.jpg")),
    MostTaken(
        text: "Photography Basics - 101",
        image: AssetImage("assets/images/ad.jpg")),
    MostTaken(
        text: "Basics of Logical Thinking",
        image: AssetImage("assets/images/sdXD.png")),
    MostTaken(
        text: "Computer Sceince - CS50 ",
        image: AssetImage("assets/images/code.jpg"))
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Text(
                    "Hello,\n${Data().username}",
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/Account");
                    },
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.amber[700],
                      child: Image(
                        image: AssetImage(Data().profileImage),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Trending",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: SelectionTile(
                          icon: trending[index].icon,
                          image: trending[index].image,
                          text: trending[index].text),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Most Taken",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                )
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: mostTaken.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Selectable(
                      title: mostTaken[index].text,
                      image: mostTaken[index].image,
                    ),
                  );
                }),
          ],
        )),
      ),
    );
  }
}
