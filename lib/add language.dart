import 'package:asignment_ui/add%20language_list.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Add_Language extends StatefulWidget {
  const Add_Language({super.key});

  @override
  State<Add_Language> createState() => _Add_LanguageState();
}

class _Add_LanguageState extends State<Add_Language> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Language'),),
      body:Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Flexible(
          flex: 2,
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    DottedBorder(
                      color: Colors.orange,
                      radius: const Radius.circular(20),
                      strokeWidth: 1,
                      child: Center(
                        child: Container(height: 200,width: 400,
                          child: TextButton(onPressed:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                             return Adding_language();
                            }));
                          } ,child: const Center(child: Text('Add Language'))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: ElevatedButton(onPressed:(){} , child:const Text('Submit') ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}