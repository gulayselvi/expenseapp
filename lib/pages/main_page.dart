import 'package:expenseapp/pages/expense_list.dart';
import 'package:expenseapp/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (ctx) => NewExpense());
            }, icon: const Icon(Icons.add))
          ],
          title: const Text("ExpenseApp"),
          backgroundColor: const Color.fromARGB(255, 199, 151, 250),
          centerTitle: true,
        ),
        body: const ExpenseList(),
       
      );
  }
}