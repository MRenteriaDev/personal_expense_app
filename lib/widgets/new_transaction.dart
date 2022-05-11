import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  late final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amout',
              ),
              controller: amountController,
              // onChanged: (val) {
              //   amountInput = val;
              // },
            ),
            FlatButton(
              child: const Text('add Transacttion'),
              textColor: Colors.purple,
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
