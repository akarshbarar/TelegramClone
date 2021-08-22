import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          leading: CircleAvatar(
            child: FlutterLogo(),
          ),
          title: Text(
            "CodeCave",
            style: TextStyle(color: Colors.black),
          ),
          actions: [Icon(Icons.search), Icon(Icons.more_vert)],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: ListTile(
                leading: Icon(Icons.camera_enhance),
                title: Text(
                  "Set Photo Profile",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Text("Account"),
                    ListTile(
                      title: Text(
                        "+919321456987",
                      ),
                      subtitle: Text("Tap to change phone number"),
                    ),
                    ListTile(
                      title: Text(
                        "@cadecave",
                      ),
                      subtitle: Text("Username"),
                    ),
                    ListTile(
                      title: Text(
                        "Bio",
                      ),
                      subtitle: Text("Add a few words about yourself"),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
