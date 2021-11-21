import 'package:flutter/material.dart';
import 'package:registar/widget/form_field.dart';

class Registration2 extends StatefulWidget {
  const Registration2({Key key}) : super(key: key);

  @override
  _Registration2State createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {

  var _key = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Color _yellowColor = Color(0xFFD4f960);

  @override
  void dispose() {
  _emailController.dispose();
  _emailController.dispose();
  super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/profile/registrationbg.jpg",fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        ),
          body: Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 16,
                  horizontal: 24
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in",style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.2,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 40,
                      ),
                      WidgetFormField(title1: 'email@addres.com',controller: _emailController,title2: 'Your email',),
                      SizedBox(
                        height: 10,
                      ),
                      WidgetFormField(title1: '******',controller: _passwordController,title2: 'Password',),
                      SizedBox(height: 24,),
                      Container(
                        width: 175,
                        height: 55,
                        decoration: BoxDecoration(
                            color: _yellowColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(35),
                              bottomRight: Radius.circular(35),
                              bottomLeft: Radius.circular(35),
                            )),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'LOGIN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              )
                            ],
                          ),

                        ),
                      ),
                      SizedBox(height: 50,),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text(
                        "don't have an account",
                        style: TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 12,),
                      Text(

                        'create one',
                        style: TextStyle(color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
