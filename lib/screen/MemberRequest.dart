import 'package:flutter/material.dart';
import 'mobile_otp.dart';

class MemberRequest extends StatefulWidget {
  @override
  _MemberRequestState createState() => _MemberRequestState();
}

class _MemberRequestState extends State<MemberRequest> {

  final FocusScopeNode _node = FocusScopeNode();
  final _formKey = GlobalKey<FormState>();
  final TF1 = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Member Request"),
      ),
      body:Container(

      child: Form(
      key: _formKey,
      child:FocusScope(
        node: _node,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Image.asset("assets/logo2.png"),
            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/20,right:MediaQuery.of(context).size.width/20),
              child:TextFormField(
                controller: TF1,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                autocorrect: true,
                autofocus: true,
                cursorColor: Colors.lightGreen,
                onEditingComplete: _node.nextFocus,
                validator:(value){
                  if(value.isEmpty){
                    return "Please Enter Your Member Id";
                  }
                  else{
                    return null;
                  }
                },
                decoration:InputDecoration(
                  labelText:"Member Id",
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

            SizedBox(
              height: 20,
            ),

            RaisedButton(
              onPressed:(){
                if (_formKey.currentState.validate()) {
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Submitted')));
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>MobileOtp()));
                }



              },
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(10),
              ),
              child:Text("Login"),
            ),

            SizedBox(
              height: 20,
            ),

          ],
        ),
       ),
      ),


       ),
     );
   }
 }
