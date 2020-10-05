import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

class LoginRequest extends StatefulWidget {
  @override
  _LoginRequestState createState() => _LoginRequestState();
}

class _LoginRequestState extends State<LoginRequest> {




  void initState(){
    super.initState();
    _date = DateTime.now();
    permission();
  }
  DateTime _date;
  String DOB = "";

  permission()async{
    var status = await Permission.storage.status;
    if(status.isGranted){

    }
    else
    {
      await Permission.storage.request();
    }

  }



  var TF1 = TextEditingController();
  var TF2 = TextEditingController();
  var TF3 = TextEditingController();
  var TF4 = TextEditingController();
  var TF5 = TextEditingController();
  var TF6 = TextEditingController();
  var TF7 = TextEditingController();

  File _image;


  final picker = ImagePicker();

  Future<Null> setDate(BuildContext context)async{

    DateTime date = await showDatePicker(
        context:context,
        initialDate: _date,
        firstDate: DateTime(DateTime.now().year - 100),
        lastDate: DateTime(DateTime.now().year + 100),
        helpText: "Select Your BOD",
        builder: (context, child) {
        return Theme(
          data:ThemeData(primarySwatch: Colors.pink),
          child:child,
          // This will change to light theme.
        );
      },
    );

    if(date != null && _date != null){
      setState((){
        _date = date;
        DOB = "${_date.day}/${_date.month}/${_date.year}";
        TF5.value = TextEditingValue(text: DOB);
      });
    }

  }






  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      _image = File(pickedFile.path);
    });
  }
  Future getImage2() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
    });
  }

  final _formKey = GlobalKey<FormState>();
  final FocusScopeNode _node = FocusScopeNode();


  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:Text("Login Request"),
        ),
      body:Container(
        child:ListView(
          children: <Widget>[

            SizedBox(
              height: MediaQuery.of(context).size.height/10,
            ),

            Column(
              children: <Widget>[
                Stack(
                  children:<Widget>[
                    CircleAvatar(
                      backgroundImage: _image !=null?FileImage(_image):null,
                      child:_image == null?Center(
                        child:Icon(Icons.camera_alt,size: 80,),
                      ):null,
                      backgroundColor: Colors.black12,
                      radius:60,
                    ),

                  ],
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/40,
                ),

                PopupMenuButton<int>(
                  child: Text("Add Photo"),
                  itemBuilder: (context)=>[
                    PopupMenuItem(
                      value: 1,
                      child:Text("Pick Image From Camera"),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child:Text("Pick Image From Gallery"),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child:Center(
                        child:RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          onPressed:() => Navigator.of(context),
                        )
                      ),

                    )
                  ],
                  onSelected: (value){
                    if(value == 1){
                      getImage();
                    }
                    else if(value == 2){
                      getImage2();
                    }
                    else if(value == 3){
                      Navigator.of(context);
                    }

                  },
                ),




                SizedBox(
                  height: MediaQuery.of(context).size.height/40,
                ),

                Container(
                  width:MediaQuery.of(context).size.width/1.2,
                  child:Form(
                    key:_formKey,
                    child:FocusScope(
                      node:_node,
                      child:Column(
                        children: <Widget>[

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          TextFormField(
                            controller: TF1,
                            textInputAction: TextInputAction.next,
                           // autofocus:true,
                            autocorrect: true,
                            cursorColor: Colors.lightGreen,
                            onEditingComplete: _node.nextFocus,

                            validator: (value){
                              if(value.isEmpty){
                                return "Please Enter Your Name";
                              }
                              else{
                                return null;
                              }
                            },

                            decoration: InputDecoration(
                              labelText: "First Name",
                              labelStyle:TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightGreen
                                  )
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          TextFormField(
                            controller: TF2,
                            textInputAction: TextInputAction.next,
                            //autofocus:true,
                            autocorrect: true,
                            cursorColor: Colors.lightGreen,
                            onEditingComplete: _node.nextFocus,
                            validator: (value){
                              if(value.isEmpty){
                                return "Please Enter Your Father Name";
                              }
                              else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              labelText: "Father Name",
                              labelStyle:TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightGreen
                                  )
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          TextFormField(
                            controller: TF3,
                            textInputAction: TextInputAction.next,
                            //autofocus: true,
                            autocorrect: true,
                            cursorColor: Colors.lightGreen,
                            onEditingComplete: _node.nextFocus,
                            validator: (value){
                              if(value.isEmpty){
                                return "Please Enter Your Last Name";
                              }
                              else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              labelText: "Last Name",
                              labelStyle:TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightGreen
                                  )
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          TextFormField(
                            controller: TF4,
                            textInputAction: TextInputAction.next,
                            //autofocus: true,
                            autocorrect: true,
                            cursorColor: Colors.lightGreen,
                            onEditingComplete: _node.nextFocus,
                            keyboardType: TextInputType.number,
                            validator: (value){
                              if(value.isEmpty){
                                return "Please Enter Your Mobile Number";
                              }
                              else{
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              labelText: "Phone",
                              labelStyle:TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightGreen
                                  )
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),


                          GestureDetector(
                            onTap:()=> setDate(context),
                            child: AbsorbPointer(
                              child: TextFormField(
                                controller: TF5,
                                autocorrect: true,
                                cursorColor: Colors.lightGreen,
                                onEditingComplete: _node.nextFocus,
                                validator: (value){
                                  if(value.isEmpty){
                                    return "Please Enter Your date Of Birth";
                                  }
                                  else{
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: "Date Of Birth",
                                  hintText: "$_date",
                                  labelStyle:TextStyle(
                                    color: Colors.teal,
                                    fontSize: 20,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.lightGreen
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),






                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          TextFormField(
                            controller: TF6,
                            textInputAction: TextInputAction.next,
                            //autofocus: true,
                            autocorrect: true,
                            cursorColor: Colors.lightGreen,
                            validator: (value){
                              if(value.isEmpty){
                                return "Please Enter Your Current";
                              }
                              else{
                                return null;
                              }
                            },
                            onEditingComplete: _node.nextFocus,
                            decoration: InputDecoration(
                              labelText: "Current City",
                              labelStyle:TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightGreen
                                  )
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          TextFormField(
                            controller: TF7,
                            textInputAction: TextInputAction.next,
                            cursorColor: Colors.lightGreen,
                            //autofocus: true,
                            autocorrect: true,
                            validator: (value){
                              if(value.isEmpty){
                                return "Please Enter Your Native City";
                              }
                              else{
                                return null;
                              }
                            },
                            onEditingComplete: _node.nextFocus,
                            decoration: InputDecoration(
                              labelText: "Native City",
                              labelStyle:TextStyle(
                                color: Colors.teal,
                                fontSize: 20,
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.lightGreen
                                  )
                              ),
                            ),
                          ),

                          SizedBox(
                            height: MediaQuery.of(context).size.height/40,
                          ),

                          SizedBox(
                              width: MediaQuery.of(context).size.width/2,
                              child: RaisedButton(
                                child:Text("Submit",style: TextStyle(fontSize: 20,color: Colors.teal),),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                onPressed: (){
                                       if (_formKey.currentState.validate()) {
                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Submitted')));
                                       }
                                },
                              )
                          ),

                          SizedBox(
                            height:MediaQuery.of(context).size.height/40,
                          ),

                        ],
                      ),
                    ),


                  ),
                ),

              ],
            ),
          ],
        ),
      ) ,
    );
  }
}
