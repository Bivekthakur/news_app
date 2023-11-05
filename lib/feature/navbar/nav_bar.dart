import 'package:flutter/material.dart';
import 'package:newsapp/feature/entertainment/entertainment_news.dart';
import 'package:newsapp/feature/sport/sport_news.dart';
import 'package:newsapp/feature/tech-crunch/techcrunch_news.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelPadding: EdgeInsets.symmetric(horizontal: 31),
            isScrollable: true,
            tabs: [
              Tab(
                  child: Text(
                "Technology",
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                "Entertainment",
                style: TextStyle(color: Colors.black),
              )),
              Tab(
                  child: Text(
                "Sports",
                style: TextStyle(color: Colors.black),
              )),
            ],
          ),
          title: Center(child: Text("All News")),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        body: TabBarView(
          children: [

            TechCrunchNews(),
            EntertainmentNews(),
            SportsNews()
          ],
        ),
      ),
    );
  }
}
