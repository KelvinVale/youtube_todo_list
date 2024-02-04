import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My title"), 
      backgroundColor: Colors.amber,),
      body: Column(children: [
        Text("data1"),
        Text("data1"),
        Text("data1"),
        Text("data1"),
      ],),);
  }
}