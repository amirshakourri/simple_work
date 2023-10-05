import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF4B3A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 56,
              left: 49,
            ),
            child: Row(
              children: [
                Container(
                  width: 73,
                  height: 73,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 49.0, top: 43),
            child: Text(
              "Food For\nEveryone",
              style: TextStyle(
                fontSize: 65,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontFamily: 'sf',
              ),
            ),
          ),
          Stack(
            children: [
              Image.asset('assets/images/photo.png'),
              Container(
                width: 415,
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.7,
                      0.8,
                    ],
                    colors: [
                      Color(0xFFFF4B3A).withOpacity(0.0),
                      Color(0xFFFF4B3A).withOpacity(1),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                right: 33,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Container(
                    width: 314,
                    height: 60,
                    child: Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFFFF4B3A),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
