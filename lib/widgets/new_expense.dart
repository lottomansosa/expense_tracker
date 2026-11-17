import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
 
    return _NewExpenseState();
  }

}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
 

@override
void dispose(){
  _titleController.dispose();
  super.dispose();
}


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              label: Text("Title")
            ),
          ),
          // put amount textfield
          Row(children: [
            ElevatedButton(onPressed: (){}, child: Text("Save Expense"))
          ])
        ],
      )
    );
  }
}