import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Container Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
                Text(
                  'Jane Doe',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.phone, color: Colors.teal),
                        SizedBox(width: 10),
                        Text(
                          '+44 123 456 789',
                          style: TextStyle(
                              color: Colors.teal.shade900, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.email, color: Colors.teal),
                        SizedBox(width: 10),
                        Text(
                          'jane.doe@example.com',
                          style: TextStyle(
                              color: Colors.teal.shade900, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class layoutChallenge extends StatelessWidget {
  const layoutChallenge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisSize: MainAxisSize.min,
      // verticalDirection: VerticalDirection.up,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          // height: 100,
          width: 100,
          // width: double.infinity,
          color: Colors.red,
          child: Text('Container 1'),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text('Container 2'),
            ),
          ],
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Text('Container 3'),
        ),
      ],
    );
  }
}
