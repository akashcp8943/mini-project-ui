import 'dart:io';
import 'package:asignment_ui/add%20employment.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Add_Details extends StatefulWidget {
  const Add_Details({super.key});

  @override
  State<Add_Details> createState() => _Add_DetailsState();
}
class _Add_DetailsState extends State<Add_Details> {

  final formkey=GlobalKey<FormState>();
  var name=TextEditingController();
  var phonenumber=TextEditingController();
  var email=TextEditingController();
  var address=TextEditingController();
  var dob=TextEditingController();

  String gender='male';

  set XFileimage(XFile? XFileimage) {}

  Future<void>user_details() async {
    final data=await SharedPreferences.getInstance();
    data.setString('Username',name.text);
    data.setString('Phonenumber',phonenumber.toString());
    data.setString('Email', email.text);
    data.setString('Address', address.text);
    data.setString('Date_of_birth',dob.selection as String);
    getfunction();
    getfunction2();
    getfunction3();
    getfunction4();
    getfunction5();
  }
  Future<void>getfunction()async{
    final datastore=await SharedPreferences.getInstance();
    var name=datastore.getString('Username');
    print(name);
  }
  Future<void>getfunction2()async {
    final datastore = await SharedPreferences.getInstance();
    var email = datastore.getString('Email');
    print(email);
  }
  Future<void>getfunction3()async{
    final datastore=await SharedPreferences.getInstance();
    var phonenumber=datastore.getString('Phonenumber');
    print(phonenumber);
  }
  Future<void>getfunction4()async {
    final datastore = await SharedPreferences.getInstance();
    var Address = datastore.getString('Add_DETAILS');
    print(Address);
  }
  Future<void>getfunction5()async {
    final datastore = await SharedPreferences.getInstance();
    var dob = datastore.getString('Date_of_birth');
    print(dob);
  }
  var screensize;
  XFile? image;

  @override
  Widget build(BuildContext context) {
    screensize=MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Add Your Details')),
        ),
        body:SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child:  Center(
                child: Flexible(
                  child: Column(
                    children: [
                      Stack(children: [const CircleAvatar(backgroundColor: Colors.orange,
                        maxRadius: 50,child: CircleAvatar(backgroundColor: Colors.white,maxRadius: 45),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60,left:59 ),
                          child: IconButton(onPressed: () async {
                            ImagePicker image=ImagePicker();
                            XFileimage=await image.pickImage(source: ImageSource.gallery);

                          }, icon: const Icon(Icons.add_a_photo)),
                        )]),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Flexible(
                          child: TextFormField(controller: name,
                            decoration: const InputDecoration(border: OutlineInputBorder(),
                              hintText: ('Enter your name'),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: dob,
                          decoration: InputDecoration(
                              labelText: "Date of birth",
                              icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date= await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1990),
                                lastDate: DateTime(2100));
                            if(date!=null){
                              print(DateFormat('YY-MM-DD').format(date));
                            }
                          },
                        ),
                      ),
                      RadioListTile(
                          title: const Text('Male'),
                          value: 'male',
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender=value.toString();
                            });
                          }),
                      RadioListTile(
                          title: const Text('Female'),
                          value: 'Female',
                          groupValue: gender,
                          onChanged: (value){
                            setState(() {
                              gender=value.toString();
                            });
                          }),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(controller: phonenumber,
                          decoration: const InputDecoration(border: OutlineInputBorder(),
                            hintText: ('Enter your Phone Number'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(controller: email,
                          decoration: const InputDecoration(border: OutlineInputBorder(),
                            hintText: ('Enter your email'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: address,
                          maxLines: 5,
                          decoration: const InputDecoration(border: OutlineInputBorder(),
                            hintText: ('Enter your address'),
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Add_employment();
                        }));
                      },child: Icon(Icons.arrow_right_alt_sharp)),
                    ],
                  ),
                ),
              ),

            ),
          ),
        )



    );
  }
}