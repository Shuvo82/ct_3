import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textarea = TextEditingController();
  String text = "Hello World!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CT-2',
      home: Scaffold(
          backgroundColor: Colors.teal.shade700,
          appBar: AppBar(
            backgroundColor: Color(0xff6200EE),
            title: const Text('MAD CT-02'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$text",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                SizedBox.fromSize(
                  size: const Size(0, 20),
                ),
                TextField(
                  controller: textarea,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Enter any text',
                  ),
                  onChanged: (value) {
                    setState(() {
                      value = "23";
                    });
                  },
                ),
                SizedBox.fromSize(
                  size: const Size(0, 10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xff6200EE)),
                        ),
                        onPressed: () {
                          setState(() {
                            text=textarea.text;

                          });



                        },
                        child: const Text('SUBMIT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Color(0xff6200EE)),
                        ),


                        onPressed: () {
                          setState(() {
                            textarea.clear();
                          });
                        },
                        child: const Text('RESET',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
