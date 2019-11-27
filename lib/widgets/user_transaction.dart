import 'package:flutter/material.dart';
import 'package:spender_track/widgets/new_transaction.dart';
import 'package:spender_track/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(),
      TransactionList()
    ],);
  }
}
