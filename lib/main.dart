import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: ListView(
            children: const <Widget>[
              ListTile(
                title: Text('홍길동'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('홍길동'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('홍길동'),
                leading: Icon(Icons.person),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.phone),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.chat),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.contact_page),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        )
    );
  }
}
