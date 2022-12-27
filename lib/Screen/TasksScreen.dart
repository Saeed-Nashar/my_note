import 'package:flutter/material.dart';
import 'package:my_note/Screen/AddTaskScreen.dart';
import 'package:my_note/model/Task.dart';
import 'package:my_note/widget/ListTileTask.dart';


class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> task=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              isScrollControlled: true,
              context: context, builder: (context)=>SingleChildScrollView(child: Container(
              padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(addTasks: (newValue){
                  setState(() {
                    task.add(Task(name: newValue));
                    Navigator.pop(context);
                  });

              },),
          )));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.yellow,
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add,size: 40,),
                SizedBox(width: 20,),
                Text("My Note",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
              ],
            ),
            Text('${task.length} tasks',style: TextStyle(fontSize: 18),),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow[200],
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child:ListTileTasks(task),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
