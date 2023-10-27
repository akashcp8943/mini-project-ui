
import 'package:asignment_ui/add%20resume.dart';
import 'package:flutter/material.dart';

class AddEducationDetails extends StatefulWidget {
  const AddEducationDetails({super.key});

  @override
  State<AddEducationDetails> createState() => _AddEducationDetailsState();
}

class _AddEducationDetailsState extends State<AddEducationDetails> {
  final formkey=GlobalKey<FormState>();
  var education=TextEditingController();
  var university=TextEditingController();
  var course=TextEditingController();
  var courseDurationStart=TextEditingController();
  var courseDurationEnd=TextEditingController();

  String dropdownvalue='SElect';
  var educationOptions=[
    'SSLC',
    'Higher Secondary',
    'Graduate'
  ];
  String dropdownvalue1='Select';
  var courseOptions=[
    'Diploma',
    'PG',
    'MG',
    'Other'
  ];

  String courseType='Full time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Add your education')),backgroundColor: Colors.orange),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Form(key: formkey,
              child:Column(
                children: [
                  TextFormField(
                    controller: education,
                    decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Education'),
                    onTap: () {
                      DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.arrow_drop_down_outlined),
                        items: educationOptions.map((String education){
                          return DropdownMenuItem(child: Text(education),value: education,);
                        }).toList(),
                        onChanged: (String?newValue){
                          setState(() {
                            dropdownvalue=newValue!;
                          });
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: university,
                      decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'University/College'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: course,
                      decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Course'),
                      onTap: (){
                        DropdownButton(value: dropdownvalue,
                          icon: const Icon(Icons.arrow_drop_down),
                          items: courseOptions.map((String course){
                            return DropdownMenuItem(
                                value: course,child: Text(course)
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue=newValue!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                  const Text('Course_type'),
                  Flexible(
                    child: Row(
                      children: [
                        RadioListTile(title: const Text('Full time'),value: 'Full time', groupValue:courseType, onChanged: (value){
                          setState(() {
                            courseType=value.toString();
                          });
                        }),
                        RadioListTile(title: const Text('Part time'),value: 'Part time', groupValue:courseType, onChanged: (value){
                          setState(() {
                            courseType=value.toString();
                          });
                        }),
                        RadioListTile(title: const Text('Distance'),value: 'Distance', groupValue:courseType, onChanged: (value){
                          setState(() {
                            courseType=value.toString();
                          });
                        }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: courseDurationStart,
                      decoration: const InputDecoration(border: OutlineInputBorder(),hintText:'Start date'),
                      onTap: ()async {
                        var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2050));
                        if (date!=null){
                          print(date);
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: courseDurationEnd,
                      decoration: const InputDecoration(border: OutlineInputBorder(),hintText:'End date'),
                      onTap: ()async {
                        var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2050));
                        if (date!=null){
                          print(date);
                        }
                      },
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed:(){} , child: const Text('Cancel'),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0XFFFFFFFF))),
                      ElevatedButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return const Add_resume();
                        }));
                      } , child: const Text('Submit')),
                    ],
                  ),
                ],
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}