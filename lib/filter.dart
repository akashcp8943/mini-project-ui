import 'package:flutter/material.dart';

import 'home.dart';

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    List<bool>isCheckedList=[false,false,false];
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.orange,
        title: Row(
          children: [Padding(
            padding: const EdgeInsets.only(right: 200),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Home();
              }));
            }, icon: Icon(Icons.arrow_back_rounded)),
          ),
            Text('Filter',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [ Padding(
              padding: const EdgeInsets.only(top: 600),
              child: ElevatedButton(onPressed: (){}, child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0XFFFFFFFF),
                      elevation: 30)
              ),
            ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 1000,
                      width:30,
                      color: Color(0xFFFFDBAD),
                      child: Column(
                        children: [
                          Container(child: Center(child: Text('Work mode')),decoration: BoxDecoration(color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:Radius.circular(20),
                                  topLeft: Radius.circular(20))),
                            width: 200,height: 20,),
                          const Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text('Top Companies'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Role'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Post by'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 600),
                            child: ElevatedButton(onPressed: (){}, child: Text('Submit'),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0XFFFFFFFF),
                                    elevation: 30)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(height: 1000,
                      color: Colors.white,
                      child: Column(
                        children: [
                          CheckboxListTile(onChanged: (bool?value){
                            setState(() {
                              isCheckedList[0]=value!;
                            });
                          },
                            value:isCheckedList[0],
                            title:Text('Day Shift') ,
                          ),
                          CheckboxListTile(onChanged: (bool?value){
                            setState(() {
                              isCheckedList[1]=value!;
                            });
                          },
                            value:isCheckedList[1],
                            title:Text('Noon Shift') ,
                          ),
                          CheckboxListTile(onChanged: (bool?value){
                            setState(() {
                              isCheckedList[2]=value!;
                            });
                          },
                            value:isCheckedList[2],
                            title:Text('Night Shift') ,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 600),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(onPressed: (){}, child: Text('Cancel')),


                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}