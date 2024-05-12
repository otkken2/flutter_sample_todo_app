import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  final String toDo;
  final VoidCallback onDelete;

  const ToDo({super.key, required this.toDo, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(toDo),
            IconButton(
                onPressed: () {
                  onDelete;
                },
                icon: const Icon(Icons.delete))
          ],
        ));
  }
}
