import 'package:flutter/material.dart';

import 'pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BackgroundImageHaze(
      alignment: Alignment.center, // Change alignment as needed
      child: MaterialApp(
        debugShowCheckedModeBanner:
            false, // Set to false to remove the debug banner
        title: 'Medical',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: LoginPage(),
      ),
    );
  }
}

class BackgroundImageHaze extends StatelessWidget {
  final Alignment? alignment;
  final Widget child;

  BackgroundImageHaze({required this.alignment, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment ?? AlignmentDirectional.topStart,
      children: [
        // Background image
        Image.asset(
          'background_image.png', // Replace with your image asset path
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        // Haze effect
        Container(
          color:
              Colors.black.withOpacity(0.3), // Adjust opacity for haze effect
          width: double.infinity,
          height: double.infinity,
        ),
        child,
      ],
    );
  }
}
