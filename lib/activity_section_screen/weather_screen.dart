import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => WeatherScreenState();
}

class WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Weather Forecast',
            textAlign: TextAlign.center,
            style:
                TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
          )),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: h * .03,
            ),
            Container(
              height: h * .3 / 1.2,
              width: w / 1.3,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                  'https://tse1.mm.bing.net/th?id=OIP.idNd481lSiCkvCPqNbeRUQHaFl&pid=Api&P=0&h=220',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Text(
              "It's is Raining Outside",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: h * .03 / 1.5, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: h * .08,
            ),
            Container(
              height: h * .2 / 1.6,
              width: w / 1.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black.withOpacity(.1)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: h * .08,
                          width: w * .2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black.withOpacity(.1)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://tse3.mm.bing.net/th?id=OIP.knWVrtWDLi6UJ0yiu7mirgHaFO&pid=Api&P=0&h=220',
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Party Cloud",
                            style: TextStyle(
                                color: Colors.blue, fontSize: h * .02)),
                        Text("20°C"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Humidity",
                            style: TextStyle(
                                color: Colors.blue, fontSize: h * .02)),
                        Text("100%"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
