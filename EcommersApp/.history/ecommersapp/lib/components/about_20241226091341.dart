import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Niki App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                'assets/images/niki_logo.png',
                height: 100,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Niki App',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Niki App is your go-to solution for all your e-commerce needs. '
              'We provide a seamless shopping experience with a wide range of products '
              'at competitive prices. Our mission is to make online shopping easy and accessible for everyone.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 10),
                Text('support@nikiapp.com'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.phone),
                SizedBox(width: 10),
                Text('+1 234 567 890'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Icon(Icons.location_on),
                SizedBox(width: 10),
                Text('123 Niki Street, E-commerce City, EC 12345'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}