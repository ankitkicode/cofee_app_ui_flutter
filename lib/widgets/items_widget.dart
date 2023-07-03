// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_import, must_be_immutable

import 'package:cofee_app/screens/single_screen_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemsWidget extends StatelessWidget {
  List img = [
    "img",
    "img2",
    "img3",
    "img4",
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 150 / 195,
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 48, 47, 47),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5)
                ]),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>SingleScreenItem(img[i])));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left:5,top: 5),
                    child: Image.asset(
                      "asset/${img[i]}.png",
                      width: 110,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3, left: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(
                        img[i],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 250, 250, 250),
                        ),

                      ),
                      SizedBox(height: 3,),
                       Text(
                       "Best Cofee",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 223, 222, 222),
                        ),
                      ),
                    ]
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$30",style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color.fromARGB(255, 243, 96, 11)
                      ),
                      child: Icon(Icons.add,color: Colors.white,),
                      
                    )
                  ],
                ),
                )
              ],
            ),
          ),
      ],
    );
  }
}
