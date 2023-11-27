import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khelo_app/allControllerBindings/all_controller_bindings.dart';
import 'package:khelo_app/constants/string_constants.dart';
import 'package:khelo_app/screens/home/home_screen.dart';
import 'package:khelo_app/utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: ((context, orientation) {
        SizeConfig().init(constraints, orientation);
        return GetMaterialApp(
            title: StringConstants.appTitle,
            debugShowCheckedModeBanner: false,
            initialBinding: AllControllerBinding(),
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const HomeScreen()
        );
      }));
    });
  }
}

