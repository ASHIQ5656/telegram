import 'dart:html';

import 'package:flutter/material.dart';
import 'package:new_project_3/create/create.dart';

class NewMessages extends StatelessWidget {
  const NewMessages({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> MyChatList = [
      "Aju",
      "Ashiq Abdu",
      "Afsal",
      "abhi",
      "antony",
      "Hari",
      "Salahu",
      "Joijin",
      "Aabu",
      "Rashi",
      "devis",
      "Amal",
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade700,
        title: Text("New Message"),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.line_weight),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: MyChatList.length,
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
                  MyChatList[index],
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
        onPressed: () {},
        child: Icon(Icons.group_add),
      ),
    );
  }
}
