part of '../../pages.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: skyBlue,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          scale: 3,
          color: whiteSkin,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).whenComplete((){
      Get.offAll(SignIn());
    });
  }
}