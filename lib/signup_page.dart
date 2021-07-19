import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
class SignupPage extends StatelessWidget {

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
      body:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
           width:double.infinity,
             height:MediaQuery.of(context).size.height,
             child: Column(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: <Widget>[Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('SignUp', style: TextStyle(fontWeight:FontWeight.bold, fontSize:40,),),
                    SizedBox(height: 5.0,),
                    Text('Create an Account', style: TextStyle(fontSize:15, color: Colors.grey[700],),),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 60),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      inputFile(lable: 'User name',),
                      inputFile(lable: 'IITG Email',),
                      inputFile(lable: 'Password', obscureText: true),
                      inputFile(lable: 'Confirm Password', obscureText: true),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

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
                      minWidth: 150.0,
                      height: 47.0,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      elevation: 0,
                      color: Colors.deepPurple,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child:Text('SignUp',
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

              ],
            ),



          ],
        ),
      ),



   ),
    );
  }
}
Widget inputFile({lable, obscureText=false}){
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
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding:EdgeInsets.symmetric(vertical: 0.0,horizontal: 10.0),
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

