import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

var a = 1;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print(a);
              a++;
            },
            child: Text(a.toString()),
          ),
          appBar: AppBar(),
          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Item $index'),
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.arrow_forward),
              );
            },
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
