import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  final number;
  OtpScreen({Key key, this.number}) : super(key: key);
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen>{
  final FocusScopeNode _node = FocusScopeNode();
  final _formKey = GlobalKey<FormState>();
  final TF1 = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Using OTP"),
      ),
      body:Container(
        child:Form(
          key:_formKey,
          child: FocusScope(
            node:_node,
            child: Padding(
              padding:EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 20,
                  right: MediaQuery.of(context).size.width / 20),
              child: Column(
                children:[
                  SizedBox(
                    height: 30,
                  ),
                  Text("An OTP has been sent to NUMBER"),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: TF1,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    autocorrect: true,
                    autofocus: true,
                    cursorColor: Colors.lightGreen,
                    onEditingComplete: _node.nextFocus,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Please Enter Valid OTP";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Enter 6 Digit OTP",
                      labelStyle: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.lightGreen,
                      )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Resend"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      RaisedButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Login Successfully')));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpScreen()));
                          }
                        },
                        child: Text("Send OTP"),
                      ),
                    ],
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
