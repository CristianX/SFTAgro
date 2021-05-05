import 'package:flutter/material.dart';

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
      
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = Paint();

    lapiz.color = Color.fromRGBO(42, 193, 126, 1.0);
    lapiz.strokeWidth = 20;
    lapiz.style = PaintingStyle.fill;
    
    final path = new Path();

    path.lineTo(0, size.height * 0.60);
    path.quadraticBezierTo(size.width , size.height * 0.60, size.width * 0.98, size.height * 0.10);
    path.lineTo(size.width * 0.98, 0);

    canvas.drawPath(path, lapiz);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}