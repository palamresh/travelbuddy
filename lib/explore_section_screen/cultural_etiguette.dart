import 'package:flutter/material.dart';

class CulturalEtiquette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageHeight = 100.0; // Fixed height for the image
    final padding = screenWidth * 0.02;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cultural Etiquette'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(padding),
        children: [
          PlaceCard(
            image:
                'https://images.thequint.com/thequint/2024-01/bbc4a6cb-e3e6-43d4-a0b5-245443b0bbda/MTHL.jpg',
            title: 'अटल सेतु ब्रिज',
            location: 'मुंबई, महाराष्ट्र',
            imageSize: imageHeight, // Use height for both width and height
            isNetworkImage: true,
          ),
          SizedBox(height: padding),
          PlaceCard(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa4gjJgC81WR2lPSYv7St-R1J-Neo6N9Euww&s',
            title: 'અટલ બ્રિજ',
            location: 'અમદાવાદ, ગુજરાત',
            imageSize: imageHeight, // Use height for both width and height
            isNetworkImage: true,
          ),
        ],
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final double imageSize;
  final bool isNetworkImage;

  PlaceCard({
    required this.image,
    required this.title,
    required this.location,
    required this.imageSize,
    required this.isNetworkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(8),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: isNetworkImage
              ? Image.network(
                  image,
                  width: imageSize,
                  height: 900,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  image,
                  width: imageSize,
                  height: 90,
                  fit: BoxFit.cover,
                ),
        ),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Row(
          children: [
            Icon(Icons.location_on, size: 16, color: Colors.grey),
            SizedBox(width: 4),
            Text(location),
          ],
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
