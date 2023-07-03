// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cofee_app/screens/hometwoscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage("asset/home.jpg"),
              fit: BoxFit.cover,
              opacity: 0.6,
            )),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Coffe Shop..",
                style: GoogleFonts.pacifico(fontSize: 50, color: Colors.white),
              ),
              Column(
                children: [
                  Text(
                    "Feeling Low? Take a Sip of Cofee",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Material(
                    color: Color.fromARGB(255, 223, 136, 24),
                          borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      // splashColor: Colors.black,
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeTwoScreen()));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                       
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
