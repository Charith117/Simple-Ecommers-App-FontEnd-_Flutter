import "package:flutter/material.dart";

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            // logo at the top
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
                width: ,
              ),
            ),
            //title
            //button
          ],
        ),
      ),
    );
  }
}
