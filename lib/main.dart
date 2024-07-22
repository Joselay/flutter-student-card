import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  stops: [0.1, 0.6],
                  colors: [
                    Colors.indigo,
                    Colors.blue,
                  ],
                ),
              ),
              padding: const EdgeInsets.only(left: 10, right: 10),
              height: 380,
              child: const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          top: 10,
                        ),
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.lightBlue,
                    thickness: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                      top: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "IDENTITY CARD",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Studies at",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text("INTERNATIONAL UNIVERSITY",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(height: 20),
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "John Doe",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text("Born",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            Text(
                              "08/03/2003",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              radius: 90,
                              backgroundImage: NetworkImage(
                                  "https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg"),
                            ),
                            Text("012 345 6789",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
