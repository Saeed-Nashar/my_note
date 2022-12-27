import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTasks;

  const AddTaskScreen({required this.addTasks}) ;
  @override
  Widget build(BuildContext context) {
    String ? NewValue;
    return Container(
      color: Colors.yellow[200],
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black,width: 1.5),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value){
              NewValue=value;
            },
          ),
          SizedBox(height: 10,),
          TextButton(
              onPressed: () {
              addTasks(NewValue);
              },
              child: Text('Add',style: TextStyle(fontWeight: FontWeight.bold),),
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow,
                primary: Colors.black,
              )),
        ],
      ),
    );
  }
}
