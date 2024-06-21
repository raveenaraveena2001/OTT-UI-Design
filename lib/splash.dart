import 'dart:math';
import 'package:flutter/material.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late List<AnimationController> controllers;
  late List<Animation<double>> rotations;
  final List<String> lines = ["Prime Videos"];
  late AnimationController backgroundController;
  late Animation<double> backgroundAnimation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controllers for the lines
    controllers = List.generate(lines.length, (index) =>
        AnimationController(
          vsync: this,
          duration: Duration(seconds: 2),
        ));

    // Initialize rotation animations
    rotations = List.generate(lines.length, (index) =>
        Tween<double>(begin: 0.0, end: 2 * pi).animate(
            CurvedAnimation(parent: controllers[index], curve: Curves.easeInOut)
        ));

    // Start repeating animations
    for (var controller in controllers) {
      controller.repeat(reverse: true);
    }

    // Initialize and start the background animation
    backgroundController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    backgroundAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: backgroundController, curve: Curves.easeInOut)
    )..addListener(() {
      setState(() {});
    });
    backgroundController.repeat(reverse: true);
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    backgroundController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> rotatingTexts = List.generate(lines.length, (index) {
      return AnimatedBuilder(
        animation: rotations[index],
        builder: (_, __) {
          return Transform.rotate(
            angle: rotations[index].value,
            child: Text(
              lines[index],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50, color: Colors.indigoAccent),
            ),
          );
        },
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomPaint(
        painter: SplashBackgroundPainter(backgroundAnimation.value),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: rotatingTexts,
          ),
        ),
      ),
    );
  }
}

class SplashBackgroundPainter extends CustomPainter {
  final double animationValue;

  SplashBackgroundPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white.withOpacity(1 - animationValue)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = sqrt(size.width * size.width + size.height * size.height) / 2;
    final radius = animationValue * maxRadius;

    for (int i = 0; i < 360; i += 10) {
      final double radian = i * pi / 180;
      final pointX = center.dx + radius * cos(radian);
      final pointY = center.dy + radius * sin(radian);
      canvas.drawLine(center, Offset(pointX, pointY), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
