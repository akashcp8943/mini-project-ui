import 'package:asignment_ui/add%20employment%20details.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Add_employment extends StatefulWidget {
  const Add_employment({super.key});

  @override
  State<Add_employment> createState() => _Add_employmentState();
}

class _Add_employmentState extends State<Add_employment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Add your Employment')),backgroundColor: Colors.orange),
        body:Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Center(
            child: Column(
              children: [
                DottedBorder(
                  color: Colors.orange,
                  radius: Radius.circular(20),
                  strokeWidth: 1,
                  child: Container(height: 100,width: 200,child: Center(child: Text('Add Employment'))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: ElevatedButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder:(context){
                      return Add_Employment_details();
                    }));
                  } , child:Icon(Icons.arrow_right_alt_sharp) ),
                )
              ],
            ),
          ),
        )



    );
  }
}