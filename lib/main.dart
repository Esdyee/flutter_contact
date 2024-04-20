import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
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
    return Scaffold(
      floatingActionButton: DialogConfirm(),
      appBar: AppBar(
        title: Text('My App',
            style: TextStyle(
              color: Colors.white,
            )),
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
              ));
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
    );
  }
}

class DialogConfirm extends StatelessWidget {
  const DialogConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Column(
                    children: <Widget>[
                      // Header
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children:const <Widget>[
                              Text('Contact'),
                            ],
                          ),
                        ),
                      ),
                      // input field
                      SizedBox(
                        // width percentage
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          // margin
                          decoration: InputDecoration(
                            // border == only underline
                            border: UnderlineInputBorder(),
                            // margin
                            contentPadding: const EdgeInsets.all(10.0),
                            labelText: 'phone number',
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              ElevatedButton(
                                // shape == square
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel'),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        )
                      )

                    ],
                  ),
                );
              });
        },
        child: Text('버튼'),
      );
    });
  }
}
