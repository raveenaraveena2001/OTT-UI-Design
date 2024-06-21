
import 'package:untitled/splash.dart';

import 'auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui';

import 'package:toast/toast.dart';

import 'create_account.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();


    controller1 = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 3,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    controller2 = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
      setState(() {});
    });

    Timer(const Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg, duration: duration, gravity: gravity);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ToastContext().init(context);
    return Scaffold(
      ///  to control with background color  ///
      backgroundColor: const Color(0xff183058),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                  top: size.height * (animation2.value + .58),
                  left: size.width * .21,
                  child: CustomPaint(
                    painter: MyPainter(50),
                  ),
                ),
                Positioned(
                  top: size.height * .98,
                  left: size.width * .1,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value - 30),
                  ),
                ),
                Positioned(
                  top: size.height * .5,
                  left: size.width * (animation2.value + .8),
                  child: CustomPaint(
                    painter: MyPainter(30),
                  ),
                ),
                Positioned(
                  top: size.height * animation3.value,
                  left: size.width * (animation1.value + .1),
                  child: CustomPaint(
                    painter: MyPainter(60),
                  ),
                ),
                Positioned(
                  top: size.height * .1,
                  left: size.width * .8,
                  child: CustomPaint(
                    painter: MyPainter(animation4.value),
                  ),
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: size.height * .1, right: size.width * .6),

                        /// your app's name  ///
                        child: Text(
                          'WELCOME',
                          style: TextStyle(
                            color: Colors.white.withOpacity(1),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            wordSpacing: 4,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: Container(
                              height:50,
                              width: 300,
                              child: TextFormField(
                                controller: emailController,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined,color: Colors.white,),
                                    border: OutlineInputBorder(),
                                    hintText: 'Email'
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.white,),
                                  border: OutlineInputBorder(),
                                  hintText: 'Password',
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              component2(
                                'LOGIN',
                                2.58,
                                    () async {
                                  final message = await AuthService().registration(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  );
                                  if (message!.contains('Success')) {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (context) => const Splash(),
                                      ),
                                    );
                                  }
                                  HapticFeedback.lightImpact();
                                  showToast(
                                    message,
                                  );

                                  }

                              ),

                              SizedBox(width: size.width / 20),
                              component2(
                                'Forgotten password!',
                                2.58,
                                    () {
                                  HapticFeedback.lightImpact();
                                  showToast(
                                    "Forgotten password button pressed",
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          component2(
                            'Create a new Account',
                            2,
                                () async {

                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const create(),
                                    ),
                                  );

                              HapticFeedback.lightImpact();
                              // showToast
                              showToast('Create a new account button pressed');
                            },
                          ),
                          SizedBox(height: size.height * .05),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// to control with items around TextField  ///
  Widget TextField1(
      IconData icon, String hintText, bool isPassword, bool isEmail) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 15,
          sigmaX: 15,
        ),
        child: Container(
          height: size.width / 8,
          width: size.width / 1.2,
          alignment: Alignment.center,
          padding: EdgeInsets.only(right: size.width / 30),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(15),
          ),

          /// to control with TextField ///
          child: TextField(
            style: TextStyle(color: Colors.white.withOpacity(1)),
            cursorColor: Colors.white,
            obscureText: isPassword,
            keyboardType:
            isEmail ? TextInputType.emailAddress : TextInputType.text,
            decoration: InputDecoration(
              /// to control with icons inside TextField ///
              prefixIcon: Icon(
                icon,
                color: Colors.white.withOpacity(1),
              ),
              border: InputBorder.none,
              hintMaxLines: 1,
              hintText: hintText,

              /// to control with text inside TextField ///
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(1),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  /// to control with button ///
  Widget component2(String string, double width, VoidCallback voidCallback) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: voidCallback,
          child: Container(
            height: size.width / 8,
            width: size.width / width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.05),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              string,
              style: TextStyle(
                  color: Colors.white.withOpacity(1),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

/// to control with shape circle ///
class MyPainter extends CustomPainter {
  final double radius;

  MyPainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
          colors: [Color(0xffffffC5), Color(0xff706830)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight)
          .createShader(Rect.fromCircle(
        center: const Offset(0, 0),
        radius: radius,
      ));

    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
