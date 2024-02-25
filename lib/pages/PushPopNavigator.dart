import 'package:flutter/material.dart';
import 'package:youtube_todo_list/pages/HomePage.dart';
import 'package:youtube_todo_list/pages/ListviewPage.dart';

class PushPopNavigator extends StatefulWidget {
  const PushPopNavigator({super.key, this.layerNumber});

  final int? layerNumber;

  @override
  State<PushPopNavigator> createState() => _PushPopNavigatorState();
}

class _PushPopNavigatorState extends State<PushPopNavigator> {

  TextEditingController textController = TextEditingController(text: "");
  int myLayer = 0;

  @override
  void initState() {
    super.initState();
    if (widget.layerNumber == null) {
      myLayer = 0;
    } else {
      myLayer = widget.layerNumber!;
    }
    textController.text = myLayer.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is a test page"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          TextField(controller: textController, readOnly: true,),
          Column(
            children: [
              InkWell(
                child: Text("Press to push a new Pushpop Page"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PushPopNavigator(layerNumber: (myLayer + 1),)));
                },
              ),
              InkWell(
                child: Text("Press to push a new Listview Page"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListviewPage()));
                },
              ),
              InkWell(
                child: Text("Press to push a Home page"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              Container(height: 100,)
            ],
          ),
        ],),
      ),
    );
  }
}