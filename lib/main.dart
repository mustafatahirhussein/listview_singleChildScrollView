import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.indigo[700],
        ),
        home: ScrollDemo());
  }
}

class ScrollDemo extends StatefulWidget {
  @override
  _ScrollDemoState createState() => _ScrollDemoState();
}

class _ScrollDemoState extends State<ScrollDemo> {
  @override
  Widget build(BuildContext context) {
    var card = Container(
      height: 150,
      child: Card(
        elevation: 9,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: ListTile(
          dense: false,
          leading: FlutterLogo(),
          title: Text(
            "Flutter Easy Learning\nTutorial #31",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          subtitle: Text(
            "Instructor: Mustafa Tahir",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView & SingleChildScrollView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              card,
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.orange,
              ),
              card,
              card,
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.orange,
              ),
              card,
              card,
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.orange,
              ),
              Container(
                height: 80,
                width: double.infinity,
                color: Colors.orange,
              ),
              Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
