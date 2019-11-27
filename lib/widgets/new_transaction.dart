import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(labelText: 'Title'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(labelText: 'Amount'),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('Add Transaction'),
            color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}
