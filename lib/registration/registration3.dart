import 'package:flutter/material.dart';
import 'package:registar/widget/form_field.dart';

class Registration3 extends StatefulWidget {
  const Registration3({Key key}) : super(key: key);

  @override
  _Registration3State createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
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
        Image.asset(
          'assets/profile/registration.jpg',
          fit: BoxFit.cover,
        ),
        Opacity(
          opacity: 0.5,
          child: CustomPaint(
            painter: BackGround1(
                leftPoint: 0.35,
                rightPoint: 0.4,
                midPoint1: 0.7,
                midPoint2: 0.6),
            child: Container(),
          ),
        ),
        CustomPaint(
          painter: BackGround1(
              leftPoint: 0.45,
              rightPoint: 0.5,
              midPoint1: 0.71,
              midPoint2: 0.61),
          child: Container(),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Login to start',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                  letterSpacing: 1.2
                ),),
               SizedBox(
                 height: 16,
               ),
               Row(
                 children: [
                   Flexible(
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
                   SizedBox(width: 45,),
                   InkWell(
                     onTap: (){},
                     child: Transform.translate(
                       offset: Offset(0,30),
                       child: Container(
                         height: 85,
                         width: 85,
                         decoration: BoxDecoration(
                           color: Color(0xFFF9C660),
                           shape: BoxShape.circle
                         ),
                         child: Align(
                           alignment: Alignment.center,
                           child: Text('GO',style: TextStyle(
                             color: Colors.white,
                             fontSize: 28,
                             fontWeight: FontWeight.bold,
                             letterSpacing: 1.2
                           ),),
                         ),
                       ),
                     ),
                   )
                 ],
               ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xFFF9C660),
                        fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(width: 22,),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: _yellowColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BackGround1 extends CustomPainter {
  final double leftPoint, rightPoint, midPoint1, midPoint2;

  BackGround1(
      {this.leftPoint, this.rightPoint, this.midPoint1, this.midPoint2});

  @override
  void paint(Canvas canvas, Size size) {
    Rect rec = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,

        colors: [
      Color(0xFFFF3181),
      Color(0xFFFA7537),
    ], stops: [
      0.6,
      0.9,
    ]);
    Paint paint = Paint();
    paint.shader = gradient.createShader(rec);
    Path path = Path();
    path.lineTo(0, size.height * leftPoint);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * rightPoint);
    path.lineTo(size.width * midPoint1, size.height * midPoint2);
    path.lineTo(0, size.height * leftPoint);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
