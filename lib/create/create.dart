import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  String name;
  String surname;

  Create({super.key,required this.name,required this.surname});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              widget.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              children: [
                Icon(Icons.edit),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.delete)
              ],
            ),
          ]),
          SizedBox(
            width: 250,
            child: Text(
              widget.surname,
              maxLines: 3,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
