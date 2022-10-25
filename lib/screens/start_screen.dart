import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Janniks coole Seite",
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Image.asset("assets/matthias-person.256x256.jpg"),),
              machZeile(
                text: "Alter: 26"
              ),
              machZeile(
                text: "Augenfarbe: graublau"
              ),
              machZeile(
                text: "Bankdrücken: 120 kg"
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget machZeile({text: "hallo"}) {
    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              color: Colors.black12,
              child: Text(
                text,
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                  fontSize: 42.0,
                ),
              ),
            ),
          );
  }
}
