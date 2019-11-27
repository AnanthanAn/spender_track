import 'package:flutter/material.dart';
import 'package:spender_track/modals/transactions.dart';
import 'package:intl/intl.dart';
import 'package:spender_track/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpenderTracker',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SpenderTracker'),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Chart'),
                ),
                color: Colors.lightBlue,
              ),
            ),
            UserTransactions(),

          ],
        ),
      ),
    );
  }
}
