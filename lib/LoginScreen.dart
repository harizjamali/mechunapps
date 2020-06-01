import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'SignUpScreen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return _LogInScreenState();
  }
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
    body: ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 180,

          child: Padding(
            padding: EdgeInsets.all(20),
            child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50,),
              Text('Log in',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
              fontSize: 45),
              ),
              Text('Welcome',style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
          decoration: BoxDecoration(borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(150)),
            color: Colors.yellow,
          ),
        ),

        Theme(
          data: ThemeData(
            hintColor: Colors.blue
          ),
          child: Padding(padding: EdgeInsets.only(top: 50,right: 20,left: 20),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText:"Email" ,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.yellow,width: 1),
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.yellow,width: 1)
          ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.yellow,width: 1),
          ),
           focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.yellow,width: 1),
          ),
        ),
       ),
      ),
     ),
        Theme(
          data: ThemeData(
              hintColor: Colors.blue
          ),
          child: Padding(padding: EdgeInsets.only(top: 10,right: 20,left: 20),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText:"Password" ,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.yellow,width: 1),
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.yellow,width: 1)
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.yellow,width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.yellow,width: 1),
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Container(
            width: double.infinity,
            child: Text('Forget password ?', style: TextStyle(
                color: Colors.yellow),
              textAlign: TextAlign.right,),
          ),
        ),


        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.only(left: 20,right: 20),
          child: RaisedButton(onPressed: (){},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.yellow,
            child: Text('Log in',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,
                fontSize: 20),),
            padding: EdgeInsets.all(10),
          ),
        ),

        SizedBox(height: 20,),

        Container(
          width: double.infinity,
          height: 1,
          color: Colors.blue,
        ),

        Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
        child: RaisedButton(
          onPressed: (){},
          color: Colors.white,
          padding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          child: Row(
            children: <Widget>[
              Icon(FontAwesomeIcons.google,color: Colors.yellow),
              SizedBox(width: 10,),
              Text('Sign in with google', style: TextStyle(fontSize: 20,
              color: Colors.blue),)
            ],
          ),
        ),
        ),
        Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
          child: RaisedButton(
            onPressed: (){},
            color: Colors.white,
            padding: EdgeInsets.all(10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: Row(
              children: <Widget>[
                Icon(FontAwesomeIcons.facebook,color: Colors.blue.shade900,),
                SizedBox(width: 10,),
                Text('Sign in with facebook', style: TextStyle(fontSize: 20,
                    color: Colors.blue),)
              ],
            ),
          ),
        ),

        SizedBox(height: 20,),

        Center(
          child:Column(
            children: <Widget>[
              Text('Don\'t have an account?', style: TextStyle(
                  color: Colors.white),
              ),

              FlatButton(onPressed: (){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) => SignUpScreen())
                );
              },
                 child:Column(
                    children: <Widget>[
                      Text('Sign Up', style: TextStyle(color: Colors.blue),),
                      Container(
                        width: 45,
                        height: 1,
                        color: Colors.blue,
                      ),
                    ],
                  )
              )
             ]
        ),
        )
    ]
   )
  );







    ;
  }
}

