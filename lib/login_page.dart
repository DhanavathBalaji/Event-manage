import 'package:event_app/calendar.dart';
import 'package:event_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'calendar.dart';

class  LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton( onPressed: ()
        {
          Navigator.pop(context);
        },
          icon:Icon(Icons.arrow_back_ios),
          color:Colors.black,
          iconSize: 20,
        ),
      ),
      body:Container(
        width:double.infinity,
        height:MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: <Widget>[
                Expanded(child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                       Text('Login', style: TextStyle(fontWeight:FontWeight.bold, fontSize:40,),),
                        SizedBox(height: 5,),
                       Text('Login to your Account', style: TextStyle(fontSize:15, color: Colors.grey[700],),),
                        ],
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                      child:Column(
                        children: <Widget>[
                          inputFile(lable: 'IITG Email',

                          ),
                          inputFile(lable: 'Password',
                           obscureText: true),
                        ],
                      ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border:Border(
                            top: BorderSide(color:Colors.black),
                            bottom: BorderSide(color:Colors.black),
                            left: BorderSide(color:Colors.black),
                            right: BorderSide(color:Colors.black),
                          ),
                        ),
                        child:MaterialButton(
                          minWidth:150.0,
                          height: 47.0,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Calendar()));
                          },
                          elevation: 0,
                          color: Colors.deepPurple,
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child:Text('Login',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontWeight: FontWeight.w600,
                              fontSize:18,
                              color: Colors.white,
                            ),
                           ),
                           ),
                           ),
                           ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                           Text("Don't have an account?"),
                           Text("SignUp",
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w400,
                          fontSize:15,
                           ),
                           ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top:100),
                        height:200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:AssetImage("images/login.png",),
                          ),
                        ),
                      ),

              ],
               ),
                ),



          ],
        ),
      ),






    );
  }
}
Widget inputFile({lable,
  obscureText=false}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget>[
      Text(
        lable,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize:15,
          color: Colors.black,
        ),
        ),
        SizedBox(
        height: 5,
      ),

         TextField(
          // keyboardType:TextInputType.emailAddress,
          obscureText: obscureText,
           decoration: InputDecoration(
             contentPadding:EdgeInsets.only(top:14.0),
          // color:Colors.blue,
            //contentPadding:EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
             enabledBorder: OutlineInputBorder(
              borderSide:BorderSide(
              color:Colors.grey[400],
            ),
          ),
        ),


      ),





    ],
  );
}
