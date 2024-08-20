import 'package:flutter/material.dart';

class CurrencyConvert extends StatefulWidget {
  const CurrencyConvert({super.key});

  @override
  State<CurrencyConvert> createState() => _CurrencyConvertState();
}

class _CurrencyConvertState extends State<CurrencyConvert> {
  final inrController = TextEditingController();
  final usdController = TextEditingController();
  int num = 83;
  void muliplication() {
    //var IndToUsd = num * int.parse(inrController.text.toString());
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Currency Convert',
          textAlign: TextAlign.center,
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * .03,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'INR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: h * .02,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              TextFormField(
                controller: inrController,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.currency_rupee_sharp,
                      color: Colors.black,
                      size: h * .03,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Enter Your Amount",
                    hintStyle: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: h * .04,
              ),
              Center(
                child: Text(
                  'To',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: h * .03,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: h * .02,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              TextFormField(
                controller: usdController,
                style: const TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.black,
                      size: h * .03,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Your Amount is : ",
                    hintStyle: const TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              SizedBox(
                height: h * .08,
              ),
              Center(
                child: SizedBox(
                  height: h * .06,
                  width: w / 2,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () {
                      setState(() {});
                      var IndToUsd =
                          int.parse(inrController.text.toString()) / 83;
                      usdController.text = IndToUsd.toString();
                    },
                    child: Text(
                      'Convert',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: h * .02,
                          decoration: TextDecoration.none,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
