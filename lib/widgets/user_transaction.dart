import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/new_transaction.dart';
import '../widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Go to supermarket',
      amount: 129.99,
      date: DateTime.now(),
    ),
  ];

  void _addnewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addnewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
