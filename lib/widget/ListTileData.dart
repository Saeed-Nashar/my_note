import 'package:flutter/material.dart';

class ListTileData extends StatelessWidget {
  final String TitleTask;
  final bool Ischeck;
  final void Function(bool?) checBoxChange;
  ListTileData({required this.Ischeck,required this.TitleTask,required this.checBoxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(TitleTask,style: TextStyle(decoration: Ischeck ? TextDecoration.lineThrough:null),),
      trailing:  Checkbox(
        activeColor: Colors.black,
        onChanged: checBoxChange,
        //  onChanged:changeValue,
        value: Ischeck,)
    );
  }
}
/*    (bool ? newval){
        setState(() {
          Ischeck=newval!;
        });
      }*/
