// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:travelbuddy/activity_section_screen/currency_convertor.dart';
import 'package:travelbuddy/activity_section_screen/packing_list.dart';
import 'package:travelbuddy/activity_section_screen/photo_album.dart';
import 'package:travelbuddy/activity_section_screen/travel_podcast.dart';
import 'package:travelbuddy/activity_section_screen/travel_stories.dart';
import 'package:travelbuddy/activity_section_screen/weather_screen.dart';

import '../activity_section_screen/language_translator.dart';
import '../activity_section_screen/travel_quiz.dart';

class ActivitySectionPage extends StatefulWidget {
  const ActivitySectionPage({super.key});

  @override
  State<ActivitySectionPage> createState() => _MenusState();
}

class _MenusState extends State<ActivitySectionPage> {
  final title = [
    'Travel Podcast',
    'Travel Stories',
    'Travel Quiz',
    'Packing List',
    'Language Translator',
    'Currency Convertor',
    'Photo Album',
    'Weather Forecast',
  ];
  final a = [
    const TravelPodCaset(),
    const TravelStories(),
    const TravelQuiz(),
    const PackingList(),
    ConvertLanguage(),
    const CurrencyConvert(),
    const PhotoAlbum(),
    const WeatherScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Activities Section',
          style: TextStyle(fontSize: h * .03, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView.separated(
        itemCount: 8,
        separatorBuilder: (context, index) => const Divider(
          thickness: 1, // Thickness of the divider
          color: Colors.black, // Color of the divider
        ),
        itemBuilder: (context, index) {
          return Container(
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Padding(
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
                )),
          );
        },
      ),
    );
  }
}
