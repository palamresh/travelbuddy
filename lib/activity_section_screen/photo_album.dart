import 'package:flutter/material.dart';

class PhotoAlbum extends StatefulWidget {
  const PhotoAlbum({super.key});

  @override
  State<PhotoAlbum> createState() => _PhotoAlbumState();
}

class _PhotoAlbumState extends State<PhotoAlbum> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Photo Album",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .3 / 2,
                  width: w / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://tse2.mm.bing.net/th?id=OIP.494DB425GqEatSGH455qLAHaE7&pid=Api&P=0&h=220',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: h * .3 / 2,
                  width: w / 2.5,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://tse3.mm.bing.net/th?id=OIP.PUuevUFoxDO5lRMcQBdQnAHaE8&pid=Api&P=0&h=220',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: h * .03,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: h * .2 / 1.4,
                    width: w / 2 / 1.4,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Add Photo",
                        style: TextStyle(fontSize: h * .02),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * .03,
                  ),
                  Container(
                    height: h * .2 / 1.4,
                    width: w / 2 / 1.4,
                    decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(.1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Create Album",
                        style: TextStyle(fontSize: h * .02),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "Share Via",
                style: TextStyle(fontSize: h * .02),
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .1 / 1.4,
                  width: w / 2 / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Image.network(
                          height: h * .03,
                          'https://tse1.mm.bing.net/th?id=OIP.6-Etwy2306AInODxxbDK6gHaHY&pid=Api&P=0&h=220')),
                ),
                Container(
                  height: h * .1 / 1.4,
                  width: w / 2 / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Image.network(
                          height: h * .03,
                          'https://tse2.mm.bing.net/th?id=OIP.VpgnBi-eg0qHDsHuD1OA7QHaHa&pid=Api&P=0&h=220')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
