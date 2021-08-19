import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Telegram",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "Telegram",
            style: TextStyle(color: Colors.black),
          ),
          actions: [Icon(Icons.search)],
        ),
        body: ListView.builder(
            itemCount: 200,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  child: FlutterLogo(),
                  radius: 25,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name $index"),
                    Text(
                      "12:29pm",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Message $index"),
                    Chip(
                      label: Text(
                        "4",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.blue,
                    )
                  ],
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("CodeCave"),
                accountEmail: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("+919876543210"), Icon(Icons.arrow_downward)],
                ),
                currentAccountPicture: CircleAvatar(
                  child: FlutterLogo(
                    size: 42.0,
                  ),
                  backgroundColor: Colors.deepPurpleAccent,
                ),
              ),
              ListTile(
                leading: Icon(Icons.group_outlined),
                title: Text("New Group"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("Contact"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.call_outlined),
                title: Text("Call"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("People Nearby"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.group_outlined),
                title: Text("New Group"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.save_alt),
                title: Text("Saved Message"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.person_add_alt),
                title: Text("Invite Friends"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
