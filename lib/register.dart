import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/signin.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:150.0),
              child: Container(
                width:300,
                height: 250,
                decoration: BoxDecoration(
                  /*gradient: LinearGradient(
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight,
                      colors: [
                        //Color(0xff0d69ff).withOpacity(0.0),
                        const Color(0xFFF6E8F4).withOpacity(0.5),
                        const Color(0xFFC1B4CB).withOpacity(0.5),
                      ],
                      stops: [
                        0.0,1.0
                      ]),*/
                  image: DecorationImage(
                    image: NetworkImage('https://i.dlpng.com/static/png/6779596_preview.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:150.0),
              child: Container(
                width: 270,
                height: 70,
                decoration: BoxDecoration(
                  //color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
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
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> MyApp(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:12.0,left:11.0),
                          child: Text(
                            'G+',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                          'Login with Google',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Container(
                width: 270,
                height: 70,
                decoration: BoxDecoration(
                  //color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
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
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> SignIn(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left:2.0),
                          child: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                          'Login with Gmail',
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
