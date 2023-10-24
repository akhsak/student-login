import 'package:flutter/material.dart';
import 'package:stdnlogn/screen/list.dart';


class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    
    // return ValueListenableBuilder(
    //   valueListenable: student,
    //    builder: (BuildContext ctx,))

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('student login'),
          backgroundColor: Colors.purpleAccent,
        ),
        
        
        
        floatingActionButton: FloatingActionButton.extended(onPressed:(){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Listpage(),));
           }, 
        label: Text('add stdnt'),icon:Icon(Icons.add),
        backgroundColor: Colors.purpleAccent),
      ),
    )  ;
          
      
  }
}