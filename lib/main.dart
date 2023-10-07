import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

void main() {
  runApp(program());
}

class program extends StatefulWidget {
  @override
  State<program> createState() => _programState();
}

class _programState extends State<program> {
  int _TeamA = 0;

  int _TeamB = 0;

  void AddOnePoint() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Point Counter"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$_TeamA",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _TeamA++;
                        });
                      },
                      child: Text("Add 1 Point"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                        fixedSize: Size(130, 50),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _TeamA += 2;
                        });
                      },
                      child: Text("Add 2 Point"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber,
                          fixedSize: Size(130, 50)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _TeamA += 3;
                        });
                      },
                      child: Text("Add 3 Point"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                        fixedSize: Size(130, 50),
                      ),
                    ),
                  ],
                ),

                /*---------------*/
                SizedBox(
                  height: 430,
                  child: VerticalDivider(
                    color: Colors.black,
                    thickness: 1,
                    endIndent: 10,
                    indent: 20,
                  ),
                ),
                /*---------------*/
                Column(
                  children: <Widget>[
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$_TeamB",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _TeamB++;
                        });
                      },
                      child: Text("Add 1 Point"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                        fixedSize: Size(130, 50),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _TeamB += 2;
                        });
                      },
                      child: Text("Add 2 Point"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.amber,
                          fixedSize: Size(130, 50)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _TeamB += 3;
                        });
                      },
                      child: Text("Add 3 Point"),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.amber,
                        fixedSize: Size(130, 50),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _TeamB = 0;
                  _TeamA = 0;
                });
              },
              child: Text("Restart Counter "),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.amber,
                fixedSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
