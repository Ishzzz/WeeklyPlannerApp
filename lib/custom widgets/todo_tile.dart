import 'package:flutter/material.dart';

class ToDoTile extends StatefulWidget{
  final String title;
  final String description;

  const ToDoTile({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  _ToDoTileState createState() => _ToDoTileState();
}

class _ToDoTileState extends State<ToDoTile> {
  @override

  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20,),
      height: 200,
      width: 250,
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
               ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Text(widget.description,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}