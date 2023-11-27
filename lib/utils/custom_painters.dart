import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelo_app/constants/app_colors.dart';
import 'package:khelo_app/utils/size_config.dart';

class BottomNavLeftPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = AppColors.themeColor2..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(0, 0, 80, 0);
    path.quadraticBezierTo(0, 1.0, 80, 0);
    path.lineTo(150, 190);
    path.lineTo(0.0, SizeConfig.heightMultiplier * 100);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

class BottomNavRightPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = AppColors.themeColor2..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(1000,0); // Start
    path.quadraticBezierTo(0, 0, 0, 0);
    path.quadraticBezierTo(0, 0.0, 0, 0);
    path.lineTo(size.width -85, 0);
    path.lineTo(size.width - 180, size.width);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}
