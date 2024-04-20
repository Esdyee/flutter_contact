import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var a = 1;
  var names = ['Steve', 'John', 'Robert', 'Doe', 'Smith'];
  var likes = [0, 0, 0, 0, 0];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print(a);
              setState(() {
                a++;
              });
            },
            child: Text(a.toString()),
          ),
          appBar: AppBar(
            title: Text(
                'My App',
                style: TextStyle(
                  color: Colors.white,
                )
            ),
            backgroundColor: Colors.blue,
          ),
          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(names[index]),
                  // leading: Icon(Icons.account_circle),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(likes[index].toString()),
                      Icon(Icons.account_circle),
                    ],
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        likes[index]++;
                      });
                    },
                    child: Text('좋아요'),
                  )
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
