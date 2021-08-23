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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 10,
                      ),
                      child: Text("Account",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700)),
                    ),
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
            SizedBox(
              height: 10,
            ),
            Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        top: 10,
                      ),
                      child: Text("Settings",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                              fontWeight: FontWeight.w700)),
                    ),
                    ListTile(
                      leading: Icon(Icons.alarm),
                      title: Text(
                        "Notifications and Sounds",
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: Text("Privacy and setting"),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
