import 'package:flutter/material.dart';

class LocalShopping extends StatefulWidget {
  const LocalShopping({super.key});

  @override
  State<LocalShopping> createState() => _LocalShoppingState();
}

class _LocalShoppingState extends State<LocalShopping> {
  final image = [
    "https://tse4.mm.bing.net/th?id=OIP.4MDblWOt0bAMYSUpvGxTwQHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.QestHXum07y_Yeo4FfWllQHaE5&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.BGHwntfkQhjV6pfe0wwnqwHaDZ&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.52KP3y6JxpvozZIUecUYGwHaEo&pid=Api&P=0&h=220"
  ];
  final place = [
    "Santorini island",
    "Bukita Rayandro",
    "Cluster Omega",
    "Shajek Bandorban"
  ];
  final km = [
    "2KM",
    "9KM",
    "22KM",
    "5KM",
  ];
  final name = [
    "Accesorites",
    "Food items",
    "Clothes",
    "Devices",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Local Shopping",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: h * .3 / 1.6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        height: h * .3 / 1.6,
                        width: w / 2.4,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            image[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: h * .03,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: h * .01,
                          ),
                          Text(
                            place[index],
                            style: TextStyle(
                                fontSize: h * .03 / 1.4,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: h * .01,
                          ),
                          Text(
                            km[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: h * .03 / 1.6,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: h * .01,
                          ),
                          Text(
                            name[index],
                            style: TextStyle(
                                fontSize: h * .03 / 1.6,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
