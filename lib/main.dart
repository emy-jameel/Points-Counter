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
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Basketball();
  }
}

class Basketball extends StatefulWidget {
  const Basketball({super.key});

  @override
  State<Basketball> createState() => _BasketballState();
}

class _BasketballState extends State<Basketball> {
  int temepintA0 = 0;
  int temepintB0 = 0;

  void addOnePoint() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Points Counter"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "$temepintA0",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(160, 50)),
                        onPressed: () {
                          temepintA0++;
                          print(temepintA0);
                          setState(() {
                            temepintA0;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(160, 50)),
                        onPressed: () {
                          temepintA0 += 2;
                          print(temepintA0);
                          setState(() {
                            temepintA0;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(160, 50)),
                        onPressed: () {
                          temepintA0 += 3;
                          print(temepintA0);
                          setState(() {
                            temepintA0;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ],
                ),
                SizedBox(
                  height: 460,
                  child: VerticalDivider(),
                ),
                Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      "$temepintB0",
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(160, 50)),
                        onPressed: () {
                          temepintB0 += 1;
                          print(temepintB0);
                          setState(() {
                            temepintB0;
                          });
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(160, 50)),
                        onPressed: () {
                          temepintB0 += 2;
                          print(temepintB0);
                          setState(() {
                            temepintB0;
                          });
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(160, 50)),
                        onPressed: () {
                          temepintB0 += 3;
                          print(temepintB0);
                          setState(() {
                            temepintB0;
                          });
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, minimumSize: Size(160, 50)),
                onPressed: () {
                  setState(() {
                    temepintA0 = 0;
                    temepintB0 = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}
