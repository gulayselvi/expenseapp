import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  //controller
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime date = DateTime(2023,11,14);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration:const InputDecoration(label: Text("Expense Name")),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration:const InputDecoration(label: Text("Amount"),prefixText: "₺" ),
          ),
          IconButton(onPressed: () async {
            DateTime? newDate = await showDatePicker(context: context, initialDate: date, firstDate: DateTime(2000), lastDate: DateTime(2025));
            if (newDate == null) return;

            setState(() => date = newDate );

            //DatePicker açmak
            //DatePicker'dan gelen değeri Text olarak yazdırmak
          }, icon: const Icon(Icons.calendar_month)),
          const Text(
            "Tarih Seçiniz.."), // seçilen tarihi formatlayarak yazdırmak
          ElevatedButton(onPressed: () {
            print("Kayıt başarılı: ${_nameController.text}");
          }, 
          child:const Text("Kaydet"))
        ],
      ),
    );
  }
}
