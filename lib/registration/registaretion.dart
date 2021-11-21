import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:registar/widget/form_field.dart';

class Registration extends StatefulWidget {
  const Registration({Key key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  Color _yellowColor = Color(0xFFF7C41C);

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
        Image.asset(
          "assets/profile/darkbg.jpg",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45),
                child: Text(
                  'Sign in to your account',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              _form(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Create one',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 45,
              )
            ],
          ),
        )
      ],
    );
  }

  var _key = GlobalKey<FormState>();

  _form(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      margin: EdgeInsets.all(32),
      decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.all(Radius.circular(35))),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Stack(
          children: [
            Form(
              key: _key,
              child: Column(
                children: [
                  WidgetFormField(title1: 'email@addres.com',controller: _emailController,title2: 'Your email',),
                  SizedBox(
                    height: 10,
                  ),
                  WidgetFormField(title1: '******',controller: _passwordController,title2: 'Password',),

                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: _yellowColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {},
                  child: Transform.translate(
                    offset: Offset(32, 32),
                    child: Container(
                      width: 175,
                      height: 55,
                      decoration: BoxDecoration(
                          color: _yellowColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
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
                  )),
            )
          ],
        ),
      ),
    );
  }
}

