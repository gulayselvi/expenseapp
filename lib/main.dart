import 'package:expenseapp/pages/expense_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ExpenseApp"),
          backgroundColor: const Color.fromARGB(255, 199, 151, 250),
          centerTitle: true,
        ),
        body: const ExpenseList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor:const Color.fromARGB(255, 199, 151, 250),
          child:const Icon(Icons.add),
        ),
      ),
    ),
  );
}

//modelleme => üzerinde çalışılacak yapıların uygulamada nesne haline getirilmesi