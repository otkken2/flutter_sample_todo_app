import 'package:flutter/material.dart';

class AddToDoWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const AddToDoWidget({
    super.key,
    required this.controller,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 500,
            margin: const EdgeInsets.only(bottom: 10),
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: "タスクを入力してください"),
            )),
        ElevatedButton(
          onPressed: onAdd,
          child: const Text("タスクを追加"),
        ),
      ],
    );
  }
}
