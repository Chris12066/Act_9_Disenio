import 'package:alcantara/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [splashImage(), Gap(10), title(), Gap(10), myButton()],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.Outside,
            height: 20,
            position: ArcPosition.Bottom),
        elevation: 0,
        child: Container(
          height: Get.height / 1.4,
          width: Get.width,
          decoration: BoxDecoration(
            color: Color(0xff5f5f5f),
          ),
          child: Image.asset("assets/180sx.png"),
        ));
  }

  Widget title() {
    return Text(
      "Bienvenido a \n Autopartes Alcantara!",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        decoration: BoxDecoration(
            color: Color(0xff5f5f5f), borderRadius: BorderRadius.circular(42)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Iniciar",
                style: TextStyle(fontSize: 18, color: Colors.white)),
            Gap(6),
            Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.8),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                  size: 14,
                ))
          ],
        ),
      ),
    );
  }
}
