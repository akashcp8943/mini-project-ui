import 'package:flutter/material.dart';

class Adding_language extends StatefulWidget {
  const Adding_language({super.key});

  @override
  State<Adding_language> createState() => _Adding_languageState();
}

class _Adding_languageState extends State<Adding_language> {
  var language = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: Text(
                  "You can write about your years of experience, industry, or skills. People also talk about their achievements or previous job experiences.",
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, top: 150.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFFFA756)), // Add black border
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: TextField(
                    controller: language,
                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove default border
                      labelText: "Add about",
                      hintText: "Enter about",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1,
                            color: Colors.white30),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 88.0, right: 90.0),
                child: ElevatedButton(onPressed:(){

                },
                  child: Container(
                    child: Center(
                      child: Text(
                        "ADD",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFA756),
                    ),
                    height: 50,
                    width: 50,
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
