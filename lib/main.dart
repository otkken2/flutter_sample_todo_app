import 'package:flutter/material.dart';
import 'widgets/add_to_do_widget.dart';
import 'widgets/to_do_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DemoHOGE',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'sampleTodoApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _toDos = [];
  final TextEditingController _textEditingController = TextEditingController();
  void onAddToDo(String toDo) {
    setState(() {
      _toDos.add(toDo);
      _textEditingController.clear();
    });
  }

  void onDeleteToDo(String toDo) {
    setState(() {
      _toDos.remove(toDo);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AddToDoWidget(
                    controller: _textEditingController,
                    onAdd: () => onAddToDo(_textEditingController.text)),
                ..._toDos.map((toDo) =>
                    ToDo(toDo: toDo, onDelete: () => onDeleteToDo(toDo)))
              ],
            ),
          ],
        )));
  }
}
