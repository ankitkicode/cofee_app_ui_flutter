// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleScreenItem extends StatelessWidget {
  String img;
  SingleScreenItem(this.img);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 13, 13),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 25,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white.withOpacity(0.4),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  "asset/$img.png",
                  width: MediaQuery.of(context).size.width / 1.2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BEST COFFEE",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      img,
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 1, fontSize: 30),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            width: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                  size: 17,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$30.50",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Coffee is a major source of antioxidants in the diet. It has many health benefits",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white.withOpacity(0.4),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Value: ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "60ml ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),

                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 34, 33, 33),
                                  borderRadius: BorderRadius.circular(18),

                                ),
                                child: Text("Add to Card ",style: TextStyle(
                                  fontSize:17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 1, 
                                ),),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),

                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 243, 96, 11),
                                  borderRadius: BorderRadius.circular(18),

                                ),
                                child: Icon(Icons.favorite_border_outlined)
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
