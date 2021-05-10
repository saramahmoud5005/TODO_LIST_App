import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/current_tasks.dart';
import 'package:todo/register.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0.0),
                    child: MaterialButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> RegisterPage(),
                          ),
                        );
                      },
                      child: Icon(Icons.arrow_back_sharp,size: 30.0,),
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Text(
                      'SIGN IN WITH EMAIL',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://img.pngio.com/profile-icon-png-image-free-download-searchpngcom-profile-icon-png-673_673.png'
                      ),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        //Color(0xff0d69ff).withOpacity(0.0),
                        const Color(0xFF3756FF).withOpacity(0.5),
                        const Color(0xFFC1B4CB).withOpacity(0.5),
                      ],
                      stops: [
                        0.0,1.0
                      ]),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:30.0),
                        child: Container(
                          width: 250,
                          height: 80,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                labelText: "Email",
                                labelStyle: new TextStyle(
                                    color: const Color(0xFF424242),
                                    fontSize: 17.0
                                )

                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:0.0),
                        child: Container(
                          width: 250,
                          height: 100,
                          child: TextField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                labelText: "Password",
                                labelStyle: new TextStyle(
                                    color: const Color(0xFF424242),
                                    fontSize: 17.0
                                )

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Container(
                width: 170,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        //Color(0xff0d69ff).withOpacity(0.0),
                        const Color(0xFF3756FF).withOpacity(0.5),
                        const Color(0xFFC1B4CB).withOpacity(0.5),
                      ],
                      stops: [
                        0.0,1.0
                      ]),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> CurrentTasks(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      'OK',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
