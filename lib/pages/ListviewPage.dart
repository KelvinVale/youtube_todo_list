import 'package:flutter/material.dart';

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  TextEditingController controller = TextEditingController(text: "End of page");
  List<Widget> genList(int num) {
    List<Widget> returnValue = [];
    for (var i = 1; i <= num; i++) {
      returnValue.add(
        Container(color: Colors.amber, height: 30, margin: EdgeInsets.all(2),
        child: Text("$i"),)
      );
    }
    return returnValue;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("ListviewPage"),),
      body: Column(
        children: [
          Expanded(child: ListView(
            children: genList(30),
          )),
          TextField(controller: controller, readOnly: true, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}