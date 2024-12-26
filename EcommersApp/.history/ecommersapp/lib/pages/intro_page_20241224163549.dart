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
              padding: const EdgeInsets.all(25.0),
              child: Image.asset(
                'lib/images/nike.png',
                height: 240,
                width: 240,
              ),
            ),
            SizedBox(height: 48),
            //title

            Text(
              "Just Do It",
              style: TextStyle(
                fontSize: ,
                fontWeight: FontWeight.bold,
              ),
            ),
            //subtitle
             Text(
                "Brand new Sneakers and custom kiks make with premium quality",
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            //button
          ],
        ),
      ),
    );
  }
}
