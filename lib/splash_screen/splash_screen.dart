import 'package:flutter/material.dart';
import 'package:new_project_3/user_screnn/user_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 99,
                width: 101,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: NetworkImage(
                            "data:image/jpeg;base64,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"),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => UserScreen()));
        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}
