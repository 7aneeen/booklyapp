import 'package:booklyapp/core/utils/asset.dart';
import 'package:booklyapp/features/home/presentation/views/homePage.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingText;
  late Animation<Offset> slidingImage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    slidingText = Tween<Offset>(begin: Offset(0, 4), end: Offset(0, 0))
        .animate(animationController);
    slidingImage = Tween<Offset>(begin: Offset(0, -4), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    setState(() {});
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 4), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
            position: slidingImage, child: Image.asset(AssetsData.logo)),
        Center(
          child: SlideTransition(
            position: slidingText,
            child: Text(
              "Read Free Books",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
