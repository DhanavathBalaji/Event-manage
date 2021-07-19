import 'package:event_app/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
  );
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical:50.0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('WELCOME',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                    fontSize:30,

                  ),
                  ),
                  SizedBox(
                    height: 20.0,
                    child:Text('Welcome to Events App',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:15,
                  ),
                    ),
                  ),
                ],
              ),

              Container(
                height:MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage("images/home.png",),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()
                      ),
                      );
                      },
                    shape:RoundedRectangleBorder(
                      side:BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                     child:Text('Login',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.w600,
                    fontSize:18,
                    color: Colors.deepPurple,
                     ),
                     ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    shape:RoundedRectangleBorder(
                      side:BorderSide(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child:Text('Sign up',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.w600,
                        fontSize:18,
                        color: Colors.deepPurple,
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
