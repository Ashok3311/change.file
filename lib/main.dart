import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool changeShapes = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shapes-Edit"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/eye.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 4, color: Colors.deepOrange),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                     height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.yellow,
                      border: Border.all(width: 4, color: Colors.deepOrange),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  changeShapes
                      ? Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.yellow,
                            border:
                                Border.all(width: 4, color: Colors.deepOrange),
                          ),
                        )
                      : Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.yellow,
                            border:
                                Border.all(width: 4, color: Colors.deepOrange),
                          ),
                        ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  changeShapes
                      ? Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.yellow,
                            border:
                                Border.all(width: 4, color: Colors.deepOrange),
                          ),
                        )
                      : Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(50),
                              right: Radius.circular(50),
                            ),
                            color: Colors.yellow,
                            border:
                                Border.all(width: 4, color: Colors.deepOrange),
                          ),
                        ),
                  SizedBox(
                    width: 30,
                  ),
                  // Change the second Container shape based on changeShapes value
                  changeShapes
                      ? Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.yellow,
                            border:
                                Border.all(width: 4, color: Colors.deepOrange),
                          ),
                        )
                      : Container(
                          height: 100,
                          width: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            border:
                                Border.all(width: 4, color: Colors.deepOrange),
                          ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    changeShapes = !changeShapes;
                  });
                },
                child: const Text("Change"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
