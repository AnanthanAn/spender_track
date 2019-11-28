import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spender_track/modals/transactions.dart';

class TransactionList extends StatelessWidget {

  List<Transactions> _transactions ;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                child: Text(
                  tx.amount.toString(),
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                margin:
                EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      tx.title,
                      style: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(DateFormat.yMMMd().format(tx.date)),
                  ),
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
