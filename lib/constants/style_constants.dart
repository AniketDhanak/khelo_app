import 'package:flutter/material.dart';
import 'package:khelo_app/constants/font_constants.dart';
import 'package:khelo_app/utils/size_config.dart';

class StyleConstants {
  static h128PxStyleBold({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontWeight: FontWeight.bold,
        fontSize: 4.19 * SizeConfig.textMultiplier,
        letterSpacing: letterSpacing,
        color: color);
  }


  static h128PxStyleMedium({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 4.19 * SizeConfig.textMultiplier,
        letterSpacing: letterSpacing,
        color: color);
  }

  static h128PxStyleRegular(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 4.19 * SizeConfig.textMultiplier,
        letterSpacing: letterSpacing,
        color: color);
  }

  static h224PxStyleBold({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontSize: 3.59 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h224PxStyleMedium({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 3.59 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h224PxStyleRegular(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 3.59 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h320PxStyleBold({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontSize: 2.99 * SizeConfig.textMultiplier,
        //fontSize: 20.0,
        letterSpacing: 0.0,
        color: color);
  }

  static h320PxStyleMedium({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 2.99 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h320PxStyleRegular({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 2.99 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h818PxStyleBold({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h818PxStyleMedium({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h818PxStyleRegular(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h818PxStyleRegularWithoutSpacing(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h416PxStyleBold({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h416PxStyleMedium({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h416PxStyleRegular(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 2.39 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h514PxStyleBold({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontWeight: FontWeight.w800,
        fontSize: 2.09 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h514PxStyleMedium({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 2.09 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h514PxStyleRegular(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 2.09 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h612PxStyleBold({required Color color} ) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontWeight: FontWeight.w800,
        fontSize: 1.79 * SizeConfig.textMultiplier,
        color: color);
  }

  static h612PxStyleMedium({required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 1.79 * SizeConfig.textMultiplier,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.0,
        color: color);
  }

  static h612PxStyleRegular(
      {required Color color, double letterSpacing = 0.0}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 1.79 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h710PxStyleBold({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.bold,
        fontWeight: FontWeight.w800,
        fontSize: 1.49 * SizeConfig.textMultiplier,
        color: color);
  }

  static h710PxStyleMedium({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 1.49 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h710PxStyleRegular({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 1.49 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h710PxStyleRegularWithoutSpacing({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 1.49 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h86PxStyleMedium({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.medium,
        fontSize: 0.89 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }

  static h98PxStyleRegular({required Color color}) {
    return TextStyle(
        fontFamily: FontConstants.regular,
        fontSize: 1.19 * SizeConfig.textMultiplier,
        letterSpacing: 0.0,
        color: color);
  }
}
