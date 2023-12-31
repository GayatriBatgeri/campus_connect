import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // heading
            Text(
              'About Campus Connect App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            // desc
            Text(
              'Campus Connect is an innovative app that allows parents and students to explore educational institutions across the country without the need for physical travel. With our Campus Connect feature, you can experience the campuses, facilities, and courses offered at various colleges right from your device.',
              style: TextStyle(fontSize: 16),
            ),

            // separator
            SizedBox(height: 20),

            // features
            Text(
              'Key Features:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '- Virtual tours of colleges and educational institutions\n- Detailed information about courses offered\n- Insights into the facilities provided\n- Save time and travel costs\n- Easy navigation and user-friendly interface',
              style: TextStyle(fontSize: 16),
            ),

            // separator
            SizedBox(height: 20),

            // project
            Text(
              'Project:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 8),

            Text(
              'This app was developed as the mini project for the TE CSE 2022-23 class at Walchand Institute of Technology, Solapur.',
              style: TextStyle(fontSize: 16),
            ),

            // separator
            SizedBox(height: 20),

            // team members
            Text(
              'Team Members:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 4),

            Text(
              '- Chinmay Annadate\n- Gayatri Batgeri\n- Tanmay Kanhed\n- Geetanjali Mali',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
