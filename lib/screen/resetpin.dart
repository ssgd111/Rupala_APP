import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPin extends StatefulWidget {
  @override
  _ResetPinState createState() => _ResetPinState();
}

class _ResetPinState extends State<ResetPin>{

  String dropdownValue1;
  String dropdownValue2;
  String dropdownValue3;
  var TF1 = TextEditingController();
  var TF2 = TextEditingController();
  var TF3 = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final FocusScopeNode _node = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Pin"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),



                Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/30),
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration:BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    value: dropdownValue1,
                    hint:Text("Select Class",style:TextStyle(fontWeight: FontWeight.w600),),
                    isExpanded:true,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),

                    onChanged:(String newValue) {
                      setState((){
                          dropdownValue1 = newValue;
                        }
                      );
                    },
                    items: <String>['One','Two','Three','Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style:TextStyle(fontWeight: FontWeight.w600),),
                      );
                    }).toList(),
                  ),
                ),


                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),



                Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/30),
                  decoration:BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width/1.2,
                  child: DropdownButton<String>(
                    value: dropdownValue2,
                    hint: Text("Select Division",style:TextStyle(fontWeight: FontWeight.w600),),
                    isExpanded:true,
                    icon: Icon(Icons.arrow_downward),
                    iconSize:24,
                    elevation:16,
                    style: TextStyle(color: Colors.deepPurple),
                    onChanged:(String newValue) {
                      setState((){
                          dropdownValue2 = newValue;
                        }
                      );
                    },
                    items:<String>['A','B','C'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value:value,
                        child:Text(value,style:TextStyle(fontWeight: FontWeight.w600),),
                       );
                     }
                    ).toList(),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),



                Container(
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/30),
                  decoration:BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: MediaQuery.of(context).size.width/1.2,
                  child: DropdownButton<String>(
                    value: dropdownValue3,
                    hint: Text("Select Student",style:TextStyle(fontWeight: FontWeight.w600),),
                    isExpanded:true,
                    icon: Icon(Icons.arrow_downward),
                    iconSize:24,
                    elevation:16,
                    style: TextStyle(color: Colors.deepPurple),
                    onChanged:(String newValue) {
                      setState((){
                        dropdownValue3 = newValue;
                       }
                      );
                     },
                    items:<String>['Vinodbhai','Popatbhai','Mobatbhai','Bhaveshbhai'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value:value,
                        child:Text(value,style:TextStyle(fontWeight:FontWeight.w600),),
                      );
                    }
                    ).toList(),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),

                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color:Colors.blue),
                  ),
                  padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/30),
                  child:Row(
                    children:<Widget>[

                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/3,

                        child: Image.network("https://members.shreebrahamanandvidhyalaya.in/mobapi.ssgd.org/ssgd-daily-darshan/uploads/Darshan/2020/08/29/808c2c1b-f559-4cd5-850a-804020d567d9-photo_2020-08-29_08-37-08.jpg",fit: BoxFit.cover,),
                      ),

                      Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget>[
                          Text("Name"),
                          Text("Village"),
                          Text("Balance : "),
                        ],
                      ),


                    ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),


               Container(
                 padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:  MediaQuery.of(context).size.width/20),
                 child: Form(
                   key: _formKey,
                   child:FocusScope(
                     node: _node,
                     child: Column(
                       children: <Widget>[

                         SizedBox(
                           height: MediaQuery.of(context).size.height/20,
                         ),

                         TextFormField(
                           controller: TF1,
                           textInputAction: TextInputAction.next,
                           autocorrect: true,
                           keyboardType: TextInputType.number,
                           cursorColor: Colors.lightGreen,
                           onEditingComplete: _node.nextFocus,

                           validator: (value){
                             if(value.isEmpty){
                               return "Please Enter Your Old Pin";
                             }
                             else{
                               return null;
                             }
                           },

                           decoration: InputDecoration(
                             labelText: "Old Pin",
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
                           height: MediaQuery.of(context).size.height/20,
                         ),

                         TextFormField(
                           controller: TF2,
                           textInputAction: TextInputAction.next,
                           keyboardType: TextInputType.number,
                           autocorrect: true,
                           cursorColor: Colors.lightGreen,
                           onEditingComplete: _node.nextFocus,

                           validator: (value){
                             if(value.isEmpty){
                               return "Please Enter Your New Pin";
                             }
                             else{
                               return null;
                             }
                           },

                           decoration: InputDecoration(
                             labelText: "New Pin",
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
                           height: MediaQuery.of(context).size.height/20,
                         ),

                         TextFormField(
                           controller: TF3,
                           keyboardType: TextInputType.number,
                           textInputAction: TextInputAction.next,
                           autocorrect: true,
                           cursorColor: Colors.lightGreen,
                           onEditingComplete: _node.nextFocus,

                           validator: (value){
                             if(value.isEmpty){
                               return "Please Enter Your Conform Pin";
                             }
                             else{
                               return null;
                             }
                           },

                           decoration: InputDecoration(
                             labelText: "Conform Pin",
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
                           height: MediaQuery.of(context).size.height/20,
                         ),
                         
                         
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children:<Widget>[
                             RaisedButton(
                               color: Colors.lightGreen,
                               child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(15),
                               ),
                               onPressed:(){
                                 Navigator.pop(context);
                               },
                             ),
                             SizedBox(
                               width: MediaQuery.of(context).size.width/10,
                             ),
                             
                             RaisedButton(
                               color: Colors.lightGreen,
                               child: Text("Submit",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 20),),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(15),
                               ),
                               onPressed:(){
                                 if (_formKey.currentState.validate()) {
                                   Scaffold.of(context).showSnackBar(SnackBar(content: Text('Submitted')));
                                 }
                               },
                             ),
                           ],
                         ),

                         SizedBox(
                           height: MediaQuery.of(context).size.height/20,
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
      ),
    );
  }
}
