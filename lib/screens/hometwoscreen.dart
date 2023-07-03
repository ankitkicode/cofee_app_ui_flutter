// ignore_for_file: prefer_const_constructors, unused_field, unnecessary_overrides, prefer_const_literals_to_create_immutables

import 'package:cofee_app/screens/home_bottom_bar.dart';
import 'package:cofee_app/widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTwoScreen extends StatefulWidget {
  const HomeTwoScreen({super.key});

  @override
  State<HomeTwoScreen> createState() => _HomeTwoScreenState();
}

class _HomeTwoScreenState extends State<HomeTwoScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSection);
    super.initState();
  }

  _handleTabSection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              top: 15,
            ),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {

                        },
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white.withOpacity(0.8),
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white.withOpacity(0.8),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "It's a Great Day for Cofee",
                      style: GoogleFonts.lobster(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 44, 43, 43),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Find Your cofee",
                          hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white.withOpacity(0.5),
                          )),
                    ),
                  ),
                ),
                TabBar(
                    controller: _tabController,
                    labelColor: Color.fromARGB(255, 243, 96, 11),
                    unselectedLabelColor: Colors.white.withOpacity(0.7),
                    isScrollable: true,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 3, color: Color.fromARGB(255, 243, 96, 11)),
                        insets: EdgeInsets.symmetric(horizontal: 5)),
                    labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(
                        text: "Hot Coffee",
                      ),
                      Tab(
                        text: "Cold Coffee",
                      ),
                      Tab(
                        text: "Cappuccino",
                      ),
                      Tab(
                        text: "Americano",
                      ),
                    ]),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: [
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                    ItemsWidget(),
                  ][_tabController.index],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeBottomBar(),
        );
  }
}
