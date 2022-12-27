import 'package:flutter/material.dart';
import 'package:my_note/model/Task.dart';
import 'package:my_note/widget/ListTileData.dart';



class ListTileTasks extends StatefulWidget {
  final List<Task> task;

  const ListTileTasks( this.task) ;
  @override
  _ListTileTasksState createState() => _ListTileTasksState();
}

class _ListTileTasksState extends State<ListTileTasks> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: ( context,  index) {
          return ListTileData(
            Ischeck: widget.task[index].isDone,
            TitleTask: widget.task[index].name,
            checBoxChange:( newval) {
              setState(() {
                widget.task[index].changeDone();
              });
            });

        },
    );

  }
}
