import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            leading: CircleAvatar(
              child: FlutterLogo(),
            ),
            title: Text(
              "User",
              style: TextStyle(color: Colors.black),
            ),
            actions: [Icon(Icons.more_vert)],
          ),
          body: Column(
            children: [
              Expanded(
                flex: 9,
                child: ListView.builder(
                    itemCount: 100,
                    reverse: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Text("Hii $index");
                    }),
              ),
              Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit),
                      Flexible(child: TextFormField()),
                      Icon(Icons.pin)
                    ],
                  ))
            ],
          )),
    );
  }
}


// Widget chatbubble(BuildContext context, int index){
//   if()
// }