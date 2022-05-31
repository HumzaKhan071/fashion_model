import 'package:fashion_model/Widgets/intro_clipper.dart';
import 'package:flutter/material.dart';

import 'Widgets/line_clipper.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1E1D24),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: IntroClipper(),
                child: Image(
                  image: AssetImage("assets/1.jpeg"),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Local",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "Models in one place",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    Text(
                      "Get inspired by the best portfolios from all \nover the world",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: size.height * 0.1,
              right: size.width * 0.1,
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.yellow, shape: BoxShape.circle),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_arrow,
                      ))))
        ],
      ),
    );
  }
}
