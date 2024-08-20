import 'package:flutter/material.dart';

class PackingList extends StatefulWidget {
  const PackingList({super.key});

  @override
  State<PackingList> createState() => _PackingListState();
}

class _PackingListState extends State<PackingList> {
  Widget container1(var h, var w, String title) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.grey.withOpacity(.3)),
      height: h * .07,
      width: w / 1.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: h * .03 / 1.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green),
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: h * .04,
                        )),
                  )),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Packing List',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
          )),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: h * .3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://tse4.mm.bing.net/th?id=OIP.9I-JcFOS_4Gq3aVL2bNMVgHaE8&pid=Api&P=0&h=220',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              'Mountain Climbing',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .03 / 1.3, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: h * .03,
            ),
            container1(h, w, "Blog"),
            SizedBox(
              height: h * .02,
            ),
            container1(h, w, "Food"),
            SizedBox(
              height: h * .02,
            ),
            container1(h, w, "Medicine"),
            SizedBox(
              height: h * .02,
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => NavigationScreen()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Colors.grey.withOpacity(.3)),
                child: Text(
                  "Add",
                  style: TextStyle(
                      fontSize: h * .03 / 1.2,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.2,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => NavigationScreen()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue),
                child: Text(
                  "Done",
                  style: TextStyle(
                      fontSize: h * .03 / 1.2,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
