import 'package:flutter/material.dart';
import 'package:spender_track/modals/transactions.dart';
import 'package:spender_track/widgets/new_transaction.dart';
import 'package:spender_track/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transactions> _transactions = [
    Transactions(
        id: 't1', title: 'New Shoes', amount: 1000, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'Shopping', amount: 250, date: DateTime.now()),
  ];

  void addNewTransaction(String txTitle,double txAmount){
    var newTx =Transactions(title:txTitle,amount: txAmount,date: DateTime.now(),id: DateTime.now().toString() );
    setState(() {
      _transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(),
      TransactionList(_transactions),
    ],);
  }
}
