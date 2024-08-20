// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class TravelStories extends StatefulWidget {
  const TravelStories({super.key});

  @override
  State<TravelStories> createState() => _TravelStoriesState();
}

class _TravelStoriesState extends State<TravelStories> {
  final image = [
    "https://tse4.mm.bing.net/th?id=OIP.IdSx8ibbq0r9s45TVSd76wHaIC&pid=Api&P=0&h=220",
    "https://tse2.explicit.bing.net/th?id=OIP.qjkjIjCSdhIOrKggMsJF8AHaF5&pid=Api&P=0&h=220",
  ];
  final name = ["Anjelina", "Alexa Sharma"];

  final subtitle = ["Travel Guide", "Food Mall"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Travel Stories',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
          )),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    image[index],
                    height: h * .03,
                  ),
                ),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade200, shape: BoxShape.circle),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              ),
              title: Text(
                name[index],
                style: TextStyle(
                    fontSize: h * .03 / 1.2,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                subtitle[index],
                style: TextStyle(
                    fontSize: h * .02 / 1.3,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            );
          }),
    );
  }
}
