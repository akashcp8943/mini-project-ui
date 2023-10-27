import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'add education.dart';

class Add_Employment_details extends StatefulWidget {
  const Add_Employment_details({super.key});

  @override
  State<Add_Employment_details> createState() => _Add_Employment_detailsState();
}

class _Add_Employment_detailsState extends State<Add_Employment_details> {
  final formkey=GlobalKey<FormState>();
  var company_name=TextEditingController();
  var company_location=TextEditingController();
  var company_department=TextEditingController();
  var work_from_year=TextEditingController();
  var work_from_month=TextEditingController();
  var work_till_year=TextEditingController();
  var work_till_month=TextEditingController();

  String fresher='Yes';

  String dropdownvalue='Select';
  var cmpny_location=[
    'Arunachal_Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal_Pradesh',
    'Jammu_and_Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya_Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Orissa',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil_Nadu',
    'Tripura',
    'Uttarakhand',
    'Uttar_Pradesh',
    'West_Bengal',
    'Tamil_Nadu',
    'Tripura',
    'Chandigarh',
    'Delhi',
  ];
  String dropdownvalue1='Select';
  var cmpny_department=[
    'Finance',
    'Marketing',
    'Operation manager',
    'Human resource',
    'Information technology'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Add employment'),),
        body: SingleChildScrollView(
          child: Form(
            key:formkey ,
            child: Column(
              children: [
                Row(
                  children: [
                    const Text('Are you a Fresher'),
                    Flexible(
                      child: RadioListTile(title: const Text('Yes'),
                        value: 'yes',
                        groupValue: fresher,
                        onChanged: (value){
                          setState(() {
                            fresher=value.toString();
                          });
                        },
                      ),
                    ),
                    Flexible(
                      child: RadioListTile(title: const Text('No'),
                        value: 'no',
                        groupValue: fresher,
                        onChanged: (value){
                          setState(() {
                            fresher=value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TextFormField(
                      controller: company_name,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter company name',
                          labelText: 'Company name'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TextFormField(
                      controller: company_location,
                      onTap: (){
                        DropdownButton(value: dropdownvalue,
                          icon: const Icon(Icons.pin_drop),
                          items: cmpny_location.map((String cmpny_location){
                            return DropdownMenuItem(
                              value: cmpny_location,child: Text(cmpny_location),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue=newValue!;
                            });
                          },
                        );
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter company location',
                          labelText: 'Company location'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: TextFormField(
                      controller: company_department,
                      onTap: (){
                        DropdownButton(value: dropdownvalue,
                          icon: const Icon(Icons.arrow_drop_down),
                          items: cmpny_department.map((String cmpny_department){
                            return DropdownMenuItem(
                              value: cmpny_department,child: Text(cmpny_department),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue=newValue!;
                            });
                          },
                        );
                      },
                      decoration: const InputDecoration(border: OutlineInputBorder(),hintText: 'Enter company department'),
                    ),
                  ),
                ),
                Row(
                  children: [const Text('Working From'),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_from_year,
                          decoration: const InputDecoration(
                              border:OutlineInputBorder (),
                              hintText: 'Year',
                              icon: Icon(Icons.calendar_month_rounded)
                          ),
                          onTap: ()async {
                            var date=await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1990),
                                lastDate: DateTime(240));
                            if (date!=null){
                              print(DateFormat('YY').format(date!));
                            }
                          },

                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_from_month,
                          decoration: const InputDecoration(border:OutlineInputBorder (),
                              hintText: 'Month',
                              icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(01),
                                lastDate: DateTime(31));
                            if (date!=null){
                              print(DateFormat('MM').format(date!));
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [const Text('Working Till'),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_till_year,
                          decoration: const InputDecoration(border:OutlineInputBorder (),hintText: 'Year',icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1990), lastDate: DateTime(2040));
                            if (date!=null){
                              print(DateFormat('YY').format(date!));
                            }
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: work_till_month,
                          decoration: const InputDecoration(border:OutlineInputBorder (),hintText: 'Month',icon: Icon(Icons.calendar_month_rounded)),
                          onTap: ()async {
                            var date=await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(01), lastDate: DateTime(31));
                            if (date!=null){
                              print(DateFormat('MM').format(date!));
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){}, child: const Text('Cancel')),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context){
                          return const Add_education();
                        }));
                      }, child: const Text('Submit')),
                    ],
                  ),
                ),
              ],
            ),

          ),
        )
    );
  }
}