import 'dart:html';
import 'package:flutter/material.dart';
import 'package:new_project_3/new_messages/new_messages.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> MyNameList = [
      "FLIPKART 2.0",
      "ELSA",
      "MOVIES Bot #Pro",
      "CINEMA HALL",
      "CINEMA FACTORY",
      "NEW OTT MOVIES"
          "Screenshot Generator",
      "Movie/Series Bot",
      "Youtube Downloader Bot"
          "Discount Offers"
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade700,
        title: Icon(Icons.menu),
        actions: [
          Center(
            child: Text(
              "Telegram",
              style: TextStyle(fontSize: 25),
            ),
          ),
          SizedBox(
            width: 250,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: MyNameList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 40,
                ),
                title: Text(
                  MyNameList[index],
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Hi there,",
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              Divider(
                color: Colors.grey.shade800,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewMessages()));
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
