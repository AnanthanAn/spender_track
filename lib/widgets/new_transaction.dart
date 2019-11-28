import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {
  final Function addNewTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addNewTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(controller: amountController,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
          ),
          FlatButton(
            onPressed:(){
              String title = titleController.text;
              double amount = double.parse(amountController.text);
              addNewTx(title,amount);
            },
            child: Text('Add Transaction'),
            color: Colors.deepOrange,
          )
        ],
      ),
    );
  }
}
