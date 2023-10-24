import 'package:flutter/material.dart';
import 'package:stdnlogn/screen/home.dart';

class Listpage extends StatefulWidget {
  const Listpage({super.key});

  @override
  State<Listpage> createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  final _namecontroller=TextEditingController();
  final _agecontroller=TextEditingController();
  final _classcontroller=TextEditingController();
  final _addresscontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(child:IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.add_a_photo)),
                radius: 60,),
                SizedBox(
                  height: 20,
                ),
             TextField(
              controller: _namecontroller,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                hintText:'Name',
                prefixIcon:Icon(Icons.person),
                //helperText: 'enter name',
              ),
              
             ),
             SizedBox(
              height: 20,
             ),
             TextField(
              
              controller: _agecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Age',
                prefixIcon: Icon(Icons.calendar_month_rounded),
      
              ),
              
              
             ),SizedBox(
              
              height: 20,
             ),
             TextField(
              controller:_classcontroller,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                hintText: 'Class',
                prefixIcon: Icon(Icons.class_sharp),
              ),
             ),
             SizedBox(
              height: 20,
             ),
             TextField(
              controller: _addresscontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Address',
                prefixIcon: Icon(Icons.store_sharp),
              ),
             ),
             SizedBox(
              height: 20,
             ),
             ElevatedButton.icon(onPressed: (){
              _onaddstdclicked();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>home() ,));
      
             },
              icon: Icon(Icons.save),
               label: Text('save'),),
            ],
            
          ),
        ),
      ),
      
    );
  }
  Future<void> _onaddstdclicked()async{
    final _name=_namecontroller.text.trim();
    final _age=_agecontroller.text.trim();
    final _class=_classcontroller.text.trim();
    final _address=_addresscontroller.text.trim();
    if (_name.isEmpty||_age.isEmpty||_class.isEmpty||_address.isEmpty) {
      return;
      }
      print('$_name $_age $_class $_address');
  }
}