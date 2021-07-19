import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class ProfilePage extends StatelessWidget {
  Widget textfield({@required String hintText
  }) {
    return Material(
      elevation: 4,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            letterSpacing: 2,
            fontWeight: FontWeight.bold, color: Colors.black54,
          ),
          fillColor: Colors.white30,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          iconSize: 20,
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    textfield(
                      hintText: 'UserName',
                       ),
                    textfield(
                      hintText: 'Email',),
                    textfield(
                      hintText: 'Password',),
                    textfield(
                      hintText: 'Confirm Password',),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      width: 150,
                      child: RaisedButton(
                        color:Colors.deepPurpleAccent ,
                        onPressed: () {},
                        child: Center(
                          child: Text('Update', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,

                          ),),
                        ),


                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
          CustomPaint(
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,

            ),

          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(20),
                child: Text('Profile', style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold, fontSize: 35.0,),),
              ),
              Container(
                padding: EdgeInsets.all(90.0),
                //width: MediaQuery.of(context).size.width / 2,
                //height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width:4),
                  color: Colors.white,
                  image: DecorationImage(
                    //fit: BoxFit.cover,
                    image: AssetImage('images/my.jpg'),
                  ),

                ),

              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 270, left: 184),
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              child: IconButton(icon: Icon(Icons.edit, color: Colors.white,),

                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}