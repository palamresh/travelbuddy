// ignore_for_file: unused_local_variable, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:travelbuddy/explore_section_screen/adventure_planner.dart';
import 'package:travelbuddy/explore_section_screen/expense_tracker.dart';
import 'package:travelbuddy/explore_section_screen/local_cuisine.dart';
import 'package:travelbuddy/explore_section_screen/local_even.dart';
import 'package:travelbuddy/explore_section_screen/local_shopping.dart';
import 'package:travelbuddy/explore_section_screen/sustainability_guide.dart';
import 'package:travelbuddy/explore_section_screen/virtual_postcard.dart';
import 'package:travelbuddy/explore_section_screen/virtual_tour.dart';

import '../explore_section_screen/cultural_etiguette.dart';

class ExploreSectionSreen extends StatefulWidget {
  const ExploreSectionSreen({super.key});

  @override
  State<ExploreSectionSreen> createState() => _MenusState();
}

class _MenusState extends State<ExploreSectionSreen> {
  final title = [
    'Local Cusine',
    'Adventure Planner',
    'Virtual PostCard',
    'Local Shopping',
    'Virtual Tour',
    'Expense Tracker',
    'Local Event',
    'Cultural Etiquette',
    'Sustainability Guide',
  ];
  final a = [
    const LocalCuisine(),
    const AdventurePlanner(),
    const VirtualPostcard(),
    const LocalShopping(),
    const VirtualTour(),
    const ExpenseTracker(),
    const LocalEvent(),
    CulturalEtiquette(),
    const SustainabilityGuide(),
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Explore Section',
          style: TextStyle(fontSize: h * .03, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView.separated(
        itemCount: 9,
        // ignore: prefer_const_constructors
        separatorBuilder: (context, index) => Divider(
          thickness: 1, // Thickness of the divider
          color: Colors.black54, // Color of the divider
        ),
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, top: 4.0, right: 10.0, bottom: 4.0),
              child: Container(
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => a[index]));
                  },
                  title: Text(
                    title[index],
                    style: TextStyle(
                        fontSize: h * .03 / 1.3, fontWeight: FontWeight.w700),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                ),
              ));
        },
      ),
    );
  }
}
