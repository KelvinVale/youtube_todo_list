import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My title"), 
      backgroundColor: Colors.amber,),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Text(textController.text),
              Text(textController.text),
              Text(textController.text),
              Text(textController.text),
              TextField(controller: textController, onChanged: (value) {
                setState(() {});
              },),
            ],
            ),
            TextButton(onPressed: (){
              setState(() {
                textController.text = "";
              });
            }, child: Text("Clean Text"))
          ],
        ),
      ),

    );
  }
}