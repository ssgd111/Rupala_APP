import 'package:flutter/material.dart';
import 'otpScreen.dart';


class MobileOtp extends StatefulWidget {
  @override
  _MobileOtpState createState() => _MobileOtpState();
}

class _MobileOtpState extends State<MobileOtp>{

  int radioItem = 1;

  final FocusScopeNode _node = FocusScopeNode();
  final _formKey = GlobalKey<FormState>();
  final TF1 = TextEditingController();

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Choose Mobile for OTP"),
      ),
      body:Container(
        child:Center(
          child: Form(
            key: _formKey,
            child:FocusScope(
              node: _node,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[

                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:MediaQuery.of(context).size.width/20),
                    child:RadioListTile(
                      groupValue: radioItem,
                      selected: true,
                      title:Text('*******935',style:TextStyle(fontSize: 20),),
                      value:1,
                      onChanged:(val){
                        setState((){
                          radioItem = val;
                           }
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:MediaQuery.of(context).size.width/20),
                    child:RadioListTile(
                      groupValue: radioItem,
                      title:Text('*******242',style:TextStyle(fontSize: 20),),
                      value:2,
                      onChanged:(val){
                        setState((){
                            radioItem = val;
                          }
                        );
                      },
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:MediaQuery.of(context).size.width/20),
                    child:RadioListTile(
                      groupValue: radioItem,
                      title: Text('*******424',style:TextStyle(fontSize: 20),),
                      value: 3,
                      onChanged:(val){
                        setState((){
                          radioItem = val;
                           }
                         );
                       },
                     ),
                   ),

                  SizedBox(height: 30,),

                  Padding(
                    padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:MediaQuery.of(context).size.width/20 ),
                    child:TextFormField(
                      controller: TF1,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      autocorrect:true,
                      autofocus: true,
                      cursorColor: Colors.lightGreen,
                      onEditingComplete: _node.nextFocus,
                      validator:(value){
                        if(value.isEmpty){
                          return "Please Enter Your Valid Mobile Number";
                        }
                        else{
                          return null;
                        }
                      },
                      decoration:InputDecoration(
                        labelText:"Enter Your Selected Mobile Number",
                        labelStyle:TextStyle(
                          color:Colors.teal,
                          fontSize:20,
                        ),
                        focusedBorder:OutlineInputBorder(
                            borderSide:BorderSide(
                              color:Colors.lightGreen,
                            )
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding:EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:MediaQuery.of(context).size.width/20 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        RaisedButton(
                          onPressed:(){
                            Navigator.pop(context);
                          },
                          child:Text("Cancel"),
                        ),
                        SizedBox(width: 20,),
                        RaisedButton(
                          onPressed:(){
                            if(_formKey.currentState.validate()){
                              Scaffold.of(context).showSnackBar(SnackBar(content:Text('OTP Sent')));
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>OtpScreen()));
                            }
                          },
                          child:Text("Send OTP"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
